
import 'package:budgen/data/repositories/item_repository.dart';
import 'package:budgen/domain/entities/item.dart';

class GetItems {
  ItemRepository _repository = ItemRepository();

  Future<List<Item>> all() async => await _repository.getAllItems();
}
