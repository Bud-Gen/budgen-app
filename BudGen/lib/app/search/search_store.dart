import 'package:BudGen/domain/entities/item.dart';
import 'package:BudGen/domain/entities/worker.dart';
import 'package:BudGen/domain/usecases/item/change_favorite_item.dart';
import 'package:BudGen/domain/usecases/item/get_items.dart';
import 'package:BudGen/domain/usecases/project/add_item.dart';
import 'package:BudGen/domain/usecases/project/add_worker.dart';
import 'package:BudGen/domain/usecases/project/get_unfinished_project.dart';
import 'package:BudGen/domain/usecases/worker/change_favorite_worker.dart';
import 'package:BudGen/domain/usecases/worker/get_workers.dart';
import 'package:mobx/mobx.dart';
part 'search_store.g.dart';

class SearchStore = _SearchStore with _$SearchStore;

abstract class _SearchStore with Store {
  GetItems _getItems = GetItems();
  GetWorkers _getWorkers = GetWorkers();
  ChangeFavoriteItem _changeFavoriteItem = ChangeFavoriteItem();
  ChangeFavoriteWorker _changeFavoriteWorker = ChangeFavoriteWorker();
  GetUnfinishedProject _getUnfinishedProject = GetUnfinishedProject();
  AddWorker _addWorker = AddWorker();
  AddItem _addItem = AddItem();

  List<Item> cacheItems;
  List<Worker> cacheWorkers;

  @observable
  var items = ObservableList<Item>();
  @observable
  var workers = ObservableList<Worker>();

  @observable
  var itemsCount = ObservableMap<String, int>();
  @observable
  var workersCount = ObservableMap<String, int>();

  @observable
  bool showItems = true;
  @observable
  String filterText = '';

  @action
  Future<void> onInit() async {
    if (cacheItems != null) cacheItems.clear();
    if (cacheWorkers != null) cacheWorkers.clear();

    if (items != null) items.clear();
    if (workers != null) workers.clear();

    if (itemsCount != null) itemsCount.clear();
    if (workersCount != null) workersCount.clear();

    cacheItems = await _getItems.all();
    cacheWorkers = await _getWorkers.all();

    cacheItems.forEach((element) {
      items.add(element);
      itemsCount[element.id] = 0;
    });

    cacheWorkers.forEach((element) {
      workers.add(element);
      workersCount[element.id] = 0;
    });
  }

  @action
  Future<void> reloadLists() async {
    cacheItems.clear();
    cacheWorkers.clear();

    items.clear();
    workers.clear();

    itemsCount.clear();
    workersCount.clear();

    onInit();
  }

  @action
  void showItemsEnabled() {
    showItems = true;
  }

  @action
  void showWorkersEnabled() {
    if (showItems) showItems = false;
  }

  @action
  void updateFilterText(String newText) {
    filterText = newText;

    updateShownLists();
  }

  @action
  void updateShownLists() {
    var newItems = ObservableList<Item>();
    var newWorkers = ObservableList<Worker>();

    cacheItems.forEach((element) {
      if (element.name.toLowerCase().contains(filterText.toLowerCase())) {
        newItems.add(element);
      }
    });
    cacheWorkers.forEach((element) {
      if (element.name.toLowerCase().contains(filterText.toLowerCase())) {
        newWorkers.add(element);
      }
    });

    items = newItems;
    workers = newWorkers;
  }

  @action
  void favoriteItem(Item item) {
    _changeFavoriteItem.call(item);

    reloadLists();
  }

  @action
  void favoriteWorker(Worker worker) {
    _changeFavoriteWorker.call(worker);

    reloadLists();
  }

  @action
  void decreaseItemCount(String itemID) {
    var currentCount = itemsCount[itemID];
    if (currentCount > 0) itemsCount[itemID] = currentCount - 1;
  }

  @action
  void decreaseWorkerCount(String workerID) {
    var currentCount = workersCount[workerID];
    if (currentCount > 0) workersCount[workerID] = currentCount - 1;
  }

  @action
  void increaseItemCount(String itemID) {
    var currentCount = itemsCount[itemID];
    itemsCount[itemID] = currentCount + 1;
  }

  @action
  void increaseWorkerCount(String workerID) {
    var currentCount = workersCount[workerID];
    workersCount[workerID] = currentCount + 1;
  }

  String getProjectID() {
    String id;

    _getUnfinishedProject.call().then((project) {
      id = project.id;
    });

    return id;
  }

  Future<void> addItem(String id) async {
    final project = await _getUnfinishedProject.call();
    await _addItem.call(project.id, id, itemsCount[id]);
  }

  Future<void> addWorker(String id) async {
    final project = await _getUnfinishedProject.call();
    await _addWorker.call(project.id, id, workersCount[id]);
  }
}
