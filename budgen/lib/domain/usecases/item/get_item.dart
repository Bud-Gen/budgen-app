import 'package:budgen/data/repositories/item_repository.dart';
import 'package:budgen/domain/entities/item.dart';

class GetItem {
  ItemRepository _repository = ItemRepository();

  Future<Item> byId(String id) async => await _repository.getItemById(id);
}
