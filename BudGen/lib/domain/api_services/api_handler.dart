import 'dart:convert';
import 'dart:io';
import 'package:BudGen/domain/core/constants.dart';
import 'package:BudGen/domain/entities/project.dart';
import 'package:BudGen/domain/entities/user.dart';
import 'package:http/http.dart' as http;

Future<Map<String,dynamic>> login(UserCredentials user) async {
  final url = Uri.parse('${Constants.API_BASE_URL}/user-profile');
  Map<String, dynamic> responseRequest;

  final data = {"id": user.id, "name": user.name, "email": user.email};

  print(data);

  try {
    http.Response response = await http.post(url,
        body: json.encode(data),
        headers: {"Content-Type": "application/json"});

    var jsonDecoder = JsonDecoder();
    var jsonParsed = jsonDecoder.convert(response.body);

    print(jsonParsed);

    switch (response.statusCode) {
      case 201:
        {
          responseRequest =
          {"status": true, "message": jsonParsed["message"]};
          break;
        }

      case 200:
        {
          responseRequest =
          {"status": true, "message": jsonParsed["message"]};
          break;
        }
      default:
        {
          responseRequest = {
            "status": false,
            "message": "Ocorreu um erro tentar se comunicar com o servidor"
          };
        }
    }

    return responseRequest;
  }
  on HttpException catch (error) {
    responseRequest = {
      "status": false,
      "message": "Ocorreu um erro ao tentar importar a planilha"
    };

    return responseRequest;
  }
}

Future<dynamic> getProducts(String userID) async {
  final url = Uri.parse('${Constants.API_BASE_URL}/products/user/$userID');
  http.Response resp =
      await http.get(url, headers: {'Accept': 'Application/json'});
  var jsonDecoder = JsonDecoder();
  var jsonParsed = jsonDecoder.convert(resp.body);

  return jsonParsed;
}

Future<dynamic> getWorkers(String userID) async {
  final url = Uri.parse('${Constants.API_BASE_URL}/services/user/$userID');
  http.Response resp =
      await http.get(url, headers: {'Accept': 'Application/json'});
  var jsonDecoder = JsonDecoder();
  var jsonParsed = jsonDecoder.convert(resp.body);

  return jsonParsed;
}

Future<Map<String,dynamic>> importSpreadsheet(String userID,String id) async {

  final baseUrl = "${Constants.API_BASE_URL}/spreadsheet";

  final data = {
    "spreadsheetLink": id,
    "userId": userID
  };

  Map<String, dynamic> responseRequest;

  try {
    http.Response response = await http.post(baseUrl,
        body: json.encode(data),
        headers: {"Content-Type": "application/json"});

    print(response.body);

    switch (response.statusCode) {
      case 201:
        {
          responseRequest =
          {"status": true, "message": "Planilha importada com sucesso"};
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
  } on HttpException catch (error) {
    responseRequest = {
      "status": false,
      "message": "Ocorreu um erro ao tentar importar a planilha"
    };

    return responseRequest;
  }
}

Future<Map<String,dynamic>> finishProjectRemote(UserCredentials user,Project project) async {
  final url = Uri.parse('${Constants.API_BASE_URL}/projects/${project.id}');
  Map<String, dynamic> responseRequest;

  var listItemDTO = [];

  for (String key in project.items.keys){
    listItemDTO.add({"quantity":project.items[key],"saleId":key});
  }

  for (String key in project.workers.keys){
    listItemDTO.add({"quantity":project.workers[key],"saleId":key});
  }

  final data = {"listItemDTO":listItemDTO,"userId": user.id, "name": project.name, "email": user.email,"price":project.price,"discount":project.discount};


  print(data);

  try {
    http.Response response = await http.post(url,
        body: json.encode(data),
        headers: {"Content-Type": "application/json"});

    var jsonDecoder = JsonDecoder();
    var jsonParsed = jsonDecoder.convert(response.body);

    print(jsonParsed);

    switch (response.statusCode) {

      case 201:
        {
          responseRequest =
          {"status": true, "message": "Projeto finalizado com sucesso "};
          break;
        }

      case 200:
        {
          responseRequest =
          {"status": true, "message": "Projeto finalizado com sucesso "};
          break;
        }
      default:
        {
          responseRequest = {
            "status": false,
            "message": "Ocorreu um erro tentar se comunicar com o servidor"
          };
        }
    }

    return responseRequest;
  }
  on HttpException catch (error) {
    responseRequest = {
      "status": false,
      "message": "Ocorreu um erro ao tentar importar a planilha"
    };

    return responseRequest;
  }
}
