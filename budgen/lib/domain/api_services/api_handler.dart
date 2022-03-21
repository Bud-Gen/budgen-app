import 'package:budgen/domain/core/constants.dart';
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
  } on HttpException catch (error) {
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
