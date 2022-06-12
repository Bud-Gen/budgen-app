import 'package:budgen/data/repositories/item_repository.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:uuid/uuid.dart';

class InsertItem {
  Uuid _uuid = Uuid();
  ItemRepository _repository = ItemRepository();

  Future<bool> call(Item item) async => await _repository.insertItem(item);

  Future<bool> unique({
    required String name,
    required String code,
    required double price,
    String? description,
    String? url,
    String? type,
  }) async {
    final String id = _uuid.v4();
    final Item item = new Item(
      id: id,
      name: name,
      code: code,
      price: price,
      isFavorite: false,
      description: description,
      imageUrl: url,
      path: type,
      createdAt: DateTime.now(),
      createdBy: '',
    );

    return _repository.insertItem(item);
  }
}
