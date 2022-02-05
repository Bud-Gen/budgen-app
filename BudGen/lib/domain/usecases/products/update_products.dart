import 'package:BudGen/domain/usecases/item/update_items.dart';
import 'package:BudGen/domain/usecases/worker/update_workers.dart';

class InsertProducts {
  UpdateItems _updateItems = UpdateItems();
  UpdateWorkers _updateWorkers = UpdateWorkers();

  Future<bool> fromJson(Map<String, dynamic> json) async {
    List<Map<String, dynamic>> itemsJson = json['items'];
    List<Map<String, dynamic>> workersJson = json['workers'];

    return await _updateItems.call(itemsJson) &&
        await _updateWorkers.call(workersJson);
  }
}
