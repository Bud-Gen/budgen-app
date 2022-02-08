import 'package:budgen/data/repositories/item_repository.dart';
import 'package:budgen/domain/entities/item.dart';

class GetFavoriteItems {
  ItemRepository _repository = ItemRepository();

  Future<List<Item>> call() async => await _repository.getFavoriteItems();
}
