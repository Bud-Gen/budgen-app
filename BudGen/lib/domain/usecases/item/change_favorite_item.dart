import 'package:BudGen/data/repositories/item_repository.dart';
import 'package:BudGen/domain/entities/item.dart';

class ChangeFavoriteItem {
  ItemRepository _repository = ItemRepository();

  Future<bool> call(Item item) async =>
      await _repository.changeFavoriteItem(item);
}
