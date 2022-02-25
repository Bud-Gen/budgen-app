import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/item/change_favorite_item.dart';
import 'package:budgen/domain/usecases/item/get_items.dart';
import 'package:budgen/domain/usecases/project/add_item.dart';
import 'package:budgen/domain/usecases/project/add_worker.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:budgen/domain/usecases/worker/change_favorite_worker.dart';
import 'package:budgen/domain/usecases/worker/get_workers.dart';
import 'package:mobx/mobx.dart';
part 'search_store.g.dart';

class SearchStore = _SearchStore with _$SearchStore;

abstract class _SearchStore with Store {
  ChangeFavoriteWorker _changeFavoriteWorker = ChangeFavoriteWorker();
  ChangeFavoriteItem _changeFavoriteItem = ChangeFavoriteItem();
  GetWorkers _getWorkers = GetWorkers();
  GetItems _getItems = GetItems();
  GetCurrentProject _getCurrentProject = GetCurrentProject();
  AddItem _addItem = AddItem();
  AddWorker _addWorker = AddWorker();

  @observable
  List<Worker>? workers;

  @observable
  List<Item>? items;

  @observable
  Project? currentProject;

  @observable
  bool isLoading = false;

  @observable
  bool showItems = true;

  @observable
  String searchText = '';

  @action
  Future<void> onInit() async {
    isLoading = true;
    await _sync();

    isLoading = false;
  }

  @action
  void showItemsList() {
    showItems = true;
  }

  @action
  void showWorkersList() {
    showItems = false;
  }

  @action
  Future<void> addItemToProject(Item item) async {
    await _addItem.call(item: item, project: currentProject!, qtd: 1);
  }

  @action
  Future<void> addWorkerToProject(Worker worker) async {
    await _addWorker.call(project: currentProject!, worker: worker, qtd: 1);
  }

  @action
  Future<void> changeFavoriteItem(Item item) async {
    await _changeFavoriteItem.call(item);
    await _sync();
  }

  @action
  Future<void> changeFavoriteWorker(Worker worker) async {
    await _changeFavoriteWorker.call(worker);
    await _sync();
  }

  @action
  Future<void> _sync() async {
    workers = [];
    items = [];
    currentProject = null;

    currentProject = await _getCurrentProject.call();
    workers = await _getWorkers.all();
    items = await _getItems.all();
  }

  @action
  void search(String value) => searchText = value;

  @computed
  List<Item>? get filteredItemsList {
    if (searchText.isEmpty) {
      return items;
    } else {
      return items!
          .where(
            (element) =>
                element.name!.toLowerCase().contains(searchText.toLowerCase()),
          )
          .toList();
    }
  }

  @computed
  List<Worker>? get filteredWorkersList {
    if (searchText.isEmpty) {
      return workers;
    } else {
      return workers!
          .where(
            (element) =>
                element.name!.toLowerCase().contains(searchText.toLowerCase()),
          )
          .toList();
    }
  }
}
