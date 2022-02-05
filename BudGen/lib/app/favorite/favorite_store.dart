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
part 'favorite_store.g.dart';

class FavoriteStore = _FavoriteStore with _$FavoriteStore;

abstract class _FavoriteStore with Store {
  GetItems _getItems = GetItems();
  GetWorkers _getWorkers = GetWorkers();
  ChangeFavoriteItem _changeFavoriteItem = ChangeFavoriteItem();
  ChangeFavoriteWorker _changeFavoriteWorker = ChangeFavoriteWorker();
  GetUnfinishedProject _getUnfinishedProject = GetUnfinishedProject();
  AddWorker _addWorker = AddWorker();
  AddItem _addItem = AddItem();

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

  @action
  Future<void> onInit() async {
    if (items != null) items.clear();
    if (itemsCount != null) itemsCount.clear();
    if (workers != null) workers.clear();
    if (workersCount != null) workersCount.clear();

    List<Item> allItems = await _getItems.all();
    List<Worker> allWorkers = await _getWorkers.all();

    allItems.forEach((element) {
      if (element.isFavorite) {
        items.add(element);
        itemsCount[element.id] = 0;
      }
    });

    allWorkers.forEach((element) {
      if (element.isFavorite) {
        workers.add(element);
        workersCount[element.id] = 0;
      }
    });
  }

  @action
  selectShowItems() {
    showItems = true;
  }

  @action
  selectShowWorkers() {
    showItems = false;
  }

  @action
  void unFavoriteItem(Item item) {
    _changeFavoriteItem.call(item);

    reloadLists();
  }

  @action
  void unFavoriteWorker(Worker worker) {
    _changeFavoriteWorker.call(worker);

    reloadLists();
  }

  @action
  Future<void> reloadLists() async {
    items.clear();
    workers.clear();

    onInit();
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

  void addItem(String itemID) {
    var projectID = getProjectID();
    _addItem.call(projectID, itemID, itemsCount[itemID]);
  }

  void addWorker(String workerID) {
    var projectID = getProjectID();
    _addWorker.call(projectID, workerID, workersCount[workerID]);
  }
}
