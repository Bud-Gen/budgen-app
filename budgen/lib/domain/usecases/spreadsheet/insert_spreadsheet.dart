import 'package:budgen/domain/api_services/api_handler.dart';
import 'package:budgen/domain/usecases/product/insert_products.dart';

class InsertSpreadsheet {
  InsertSpreadsheet();

  Future<Map<String, dynamic>> call(String userID, String spreadsheetID) async {
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
    Map<String, dynamic> products = await getProducts(userID);

    bool isRegistered = await insertProducts.fromJson(products);

    if (!isRegistered) {
      return response;
    }
    response = spreadsheetResponse;
    return response;
  }
}
