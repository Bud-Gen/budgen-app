
import 'package:BudGen/domain/usecases/item/insert_items.dart';
import 'package:BudGen/domain/usecases/worker/insert_workers.dart';

class InsertProducts {
  InsertItems _insertItems = InsertItems();
  InsertWorkers _insertWorkers = InsertWorkers();

  Future<bool> fromJson(Map<String, dynamic> json) async {
    List<Map<String, dynamic>> itemsJson = json['items'];
    List<Map<String, dynamic>> workersJson = json['workers'];

    return await _insertItems.call(itemsJson) &&
        await _insertWorkers.call(workersJson);
  }
}
