import 'package:BudGen/data/repositories/item_repository.dart';
import 'package:BudGen/data/repositories/project_repository.dart';
import 'package:BudGen/domain/entities/item.dart';
import 'package:BudGen/domain/entities/project.dart';

class GetItemsProject {
  ItemRepository _itemRepository = ItemRepository();
  ProjectRepository _projectRepository = ProjectRepository();

  Future<List<Item>> call(String id) async {
    Project project = await _projectRepository.getProjectById(id);
    List<Item> items = [];

    if (project != null) {
      List<String> itemsId = project.items.keys.toList();

      for (String id in itemsId) {
        Item item = await _itemRepository.getItemById(id);

        if (item != null) items.add(item);
      }
      return items;
    }

    throw new ArgumentError('o id não corresponde a nenhum projeto.');
  }
}
