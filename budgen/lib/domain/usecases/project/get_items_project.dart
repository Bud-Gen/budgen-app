import 'package:budgen/data/repositories/item_repository.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';

class GetItemsProject {
  ItemRepository _itemRepository = ItemRepository();

  Future<List<Item>?> call(Project project) async {
    if (project == null) return null;

    List<String> itemsId = project.items?.keys.toList() ?? [];
    List<Item> allItems = await _itemRepository.getAllItems();

    return allItems.where((element) => itemsId.contains(element.id)).toList();
  }
}
