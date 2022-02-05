import 'package:BudGen/data/repositories/item_repository.dart';
import 'package:BudGen/domain/entities/item.dart';

class GetItems {
  ItemRepository _repository = ItemRepository();

  Future<List<Item>> all() async => await _repository.getAllItems();
}
