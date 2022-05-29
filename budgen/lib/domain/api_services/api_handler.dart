import 'package:budgen/domain/core/constants.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/project/get_items_project.dart';
import 'package:budgen/domain/usecases/project/get_workers_project.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

Future<Map<String, dynamic>> importSpreadsheet(String userID, String id) async {
  final baseUrl = "${Constants.API_BASE_URL}/spreadsheet";

  final data = jsonEncode(<String, String>{
    'sheetId': id,
  });

  Map<String, dynamic> responseRequest;

  try {
    http.Response response = await http
        .post(Uri.parse(baseUrl), body: data, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });

    switch (response.statusCode) {
      case 200:
        {
          responseRequest = {
            "status": true,
            "message": "Planilha importada com sucesso"
          };
          break;
        }

      case 201:
        {
          responseRequest = {
            "status": true,
            "message": "Planilha importada com sucesso"
          };
          break;
        }
      case 500:
        {
          responseRequest = {
            "status": false,
            "message": "Verifique o formato da planilha enviada"
          };
          break;
        }
      default:
        {
          responseRequest = {
            "status": false,
            "message": "Ocorreu um erro ao tentar importar a planilha"
          };
        }
    }
    return responseRequest;
  } on Exception catch (error) {
    responseRequest = {
      "status": false,
      "message": "Ocorreu um erro ao tentar importar a planilha"
    };

    return responseRequest;
  }
}

Future<dynamic> getProducts(String userID) async {
  final url = Uri.parse('${Constants.API_BASE_URL}/factores');
  http.Response resp =
      await http.get(url, headers: {'Accept': 'Application/json'});
  var jsonDecoder = JsonDecoder();
  var jsonParsed = jsonDecoder.convert(resp.body);

  return jsonParsed;
}

Future<dynamic> sendEmail(String email, Project project) async {
  Map<String, dynamic> responseRequest;
  String itemsMjml = "";
  String workersMjml = "";

  GetItemsProject getItemsProject = GetItemsProject();
  GetWorkersProject getWorkersProject = GetWorkersProject();

  if (project.items != null) {
    itemsMjml = """
    <mj-table>  
    <tr style="border-bottom:1px solid #ecedee;text-align:left;padding:15px 0;"> <th style="padding: 0 15px 0 0;">Qtd</th>
    <th style="padding: 0 15px;">Item</th>
    <th style="padding: 0 0 0 15px;"> Valor</th>  
    """;

    List<Item>? itens = await getItemsProject.call(project);
    Map<String, List<dynamic>> itensMap = Map();

    for (Item i in itens!) {
      itensMap[i.id!] = [i, 0];
    }

    for (var i in project.items!.keys) {
      var value = itensMap[i];
      value![1] = value[1] + project.items![i];
      itensMap[i] = value;
    }

    for (var i in itensMap.keys) {
      Item item = itensMap[i]![0];
      int qtd = itensMap[i]![1];
      double total = item.price! * qtd;

      itemsMjml += """
       <tr>
            <td style="padding: 0 15px 0 0;">$qtd</td>
            <td style="padding: 0 15px;">${item.name}</td>
            <td style="padding: 0 0 0 15px;">$total</td>
          </tr>
      """;
    }
    itemsMjml += """</mj-table>""";
  }

  if (project.workers != null) {
    workersMjml = """
    <mj-table>  
    <tr style="border-bottom:1px solid #ecedee;text-align:left;padding:15px 0;"> <th style="padding: 0 15px 0 0;">Qtd</th>
    <th style="padding: 0 15px;">Serviços</th>
    <th style="padding: 0 0 0 15px;"> Valor</th>  
    """;

    List<Worker>? workers = await getWorkersProject.call(project);
    Map<String, List<dynamic>> workersMap = Map();

    for (Worker i in workers!) {
      workersMap[i.id!] = [i, 0];
    }

    for (var i in project.workers!.keys) {
      var value = workersMap[i];
      value![1] = value[1] + project.workers![i];
      workersMap[i] = value;
    }

    for (var i in workersMap.keys) {
      Worker worker = workersMap[i]![0];
      int qtd = workersMap[i]![1];
      double total = worker.price! * qtd;

      workersMjml += """
       <tr>
            <td style="padding: 0 15px 0 0;">${qtd}</td>
            <td style="padding: 0 15px;">${worker.name}</td>
            <td style="padding: 0 0 0 15px;">$total</td>
          </tr>
      """;
    }
    workersMjml += """</mj-table>""";
  }

  try {
    final url = Uri.parse('${Constants.API_BASE_URL}/email');

    final data = jsonEncode(<String, String>{
      "to": email,
      "subject": "Orçamento ${project.name}",
      "template": """
          <mjml>   
          <mj-body>     
          <mj-section>  
          <mj-column>  
            $itemsMjml
            </mj-column>     
          </mj-section> 
           
          <mj-section>  
          <mj-column>  
            $workersMjml
            </mj-column>     
            </mj-section> 
            
            </mj-body> 
            </mjml>"""
    });

    http.Response response =
        await http.post(url, body: data, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });

    print(response.statusCode);
    print(response.body);

    switch (response.statusCode) {
      case 200:
        {
          responseRequest = {
            "status": true,
            "message": "E-mail enviado com sucesso"
          };
          break;
        }

      case 201:
        {
          responseRequest = {
            "status": true,
            "message": "E-mail enviado com sucesso"
          };
          break;
        }

      default:
        {
          responseRequest = {
            "status": false,
            "message": "Ocorreu um erro ao tentar enviar o email"
          };
        }
    }
  } on Exception catch (error) {
    responseRequest = {
      "status": false,
      "message": "Ocorreu um erro ao tentar enviar o email"
    };
  }
  return responseRequest;
}
