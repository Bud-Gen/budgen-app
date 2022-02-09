import 'package:budgen/data/repositories/item_repository.dart';
import 'package:budgen/domain/entities/item.dart';

class InsertItem {
  ItemRepository _repository = ItemRepository();

  Future<bool> call(Item item) async => await _repository.insertItem(item);
}
