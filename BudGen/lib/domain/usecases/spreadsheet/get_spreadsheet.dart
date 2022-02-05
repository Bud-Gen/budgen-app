import 'package:BudGen/domain/api_services/api_handler.dart';
import 'package:BudGen/domain/usecases/products/insert_products.dart';

class GetSpreadsheet {
  GetSpreadsheet();

  Future<Map<String, dynamic>> import(
      String userID, String spreadsheetID) async {
    Map<String, dynamic> response = {
      "status": false,
      "message": "Ocorreu um erro ao tentar importar a planilha"
    };

    Map<String, dynamic> spreadsheetResponse =
        await importSpreadsheet(userID, spreadsheetID);

    if (!spreadsheetResponse["status"]) {
      response = spreadsheetResponse;
      return response;
    }

    InsertProducts insertProducts = new InsertProducts();

    List<Map<String, dynamic>> workers = (await getWorkers(userID) as List)
        .map((e) => e as Map<String, dynamic>)
        ?.toList();

    List<Map<String, dynamic>> products = (await getProducts(userID) as List)
        .map((e) => e as Map<String, dynamic>)
        ?.toList();

    final data = {"items": products, "workers": workers};

    bool isRegistered = await insertProducts.fromJson(data);

    if (!isRegistered) {
      return response;
    }

    response = spreadsheetResponse;
    return response;
  }
}
