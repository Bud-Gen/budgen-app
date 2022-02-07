import 'package:budgen/data/repositories/item_repository.dart';
import 'package:budgen/domain/entities/item.dart';

class UpdateItems {
  ItemRepository _itemRepository = ItemRepository();

  Future<bool> call(List<Map<String, dynamic>> itemsJson) async {
    bool result = true;

    if (itemsJson != null) {
      for (Map<String, dynamic> json in itemsJson) {
        if (json != null) {
          Item item = new Item(
            id: json['id'],
            isFavorite: json['isFavorite'],
            name: json['name'],
            code: json['code'],
            description: json['description'],
            imageUrl: json['imageUrl'],
            price: json['price'],
            path: json['path'],
            createdAt: json['created_at'],
            createdBy: json['created_by'],
            deletedBy: json['deletedBy'],
          );

          bool resultItem = await _itemRepository.updateItem(item);

          result = result && resultItem;
        }
      }

      return result;
    }

    throw new ArgumentError('Nenhum objeto a ser atualizado');
  }
}
