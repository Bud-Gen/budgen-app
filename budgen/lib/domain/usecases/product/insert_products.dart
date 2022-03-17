import 'package:budgen/domain/usecases/item/insert_items.dart';
import 'package:budgen/domain/usecases/worker/insert_workers.dart';

class InsertProducts {
  InsertItems _insertItems = InsertItems();
  InsertWorkers _insertWorkers = InsertWorkers();

  Future<bool> fromJson(Map<String, dynamic> json) async {
    List<dynamic> itemsJson = json['items'];
    List<dynamic> workersJson = json['workers'];

    return await _insertItems.call(itemsJson) &&
        await _insertWorkers.call(workersJson);
  }
}
