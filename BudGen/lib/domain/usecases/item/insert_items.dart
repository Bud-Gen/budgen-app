import 'package:BudGen/data/repositories/item_repository.dart';
import 'package:BudGen/domain/entities/item.dart';
import 'package:uuid/uuid.dart';

class InsertItems {
  ItemRepository _itemRepository = ItemRepository();
  Uuid _uuid = Uuid();

  Future<bool> call(List<Map<String, dynamic>> itemsJson) async {
    bool result = true;

    if (itemsJson != null) {
      for (Map<String, dynamic> json in itemsJson) {
        String uuid = _uuid.v1();

        if (json != null) {
          Item item = new Item(
            id: uuid,
            isFavorite: false,
            name: json['name'],
            code: json['code'],
            description: json['description'],
            imageUrl: json['imageUrl'],
            price: (json['price'] is String)
                ? double.parse(json['price'])
                : json['price'],
            path: json['path'],
            createdAt: DateTime.now(),
            createdBy: '000000', //TODO: mudar para o email do usuário
            deletedBy: null,
          );

          bool resultItem = await _itemRepository.insertItem(item);

          result = result && resultItem;
        }
      }

      return result;
    }

    throw new ArgumentError('Objeto inserido null ou vazio');
  }
}
