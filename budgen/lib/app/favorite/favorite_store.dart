import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/item/change_favorite_item.dart';
import 'package:budgen/domain/usecases/item/get_favorite_items.dart';
import 'package:budgen/domain/usecases/project/add_item.dart';
import 'package:budgen/domain/usecases/project/add_worker.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:budgen/domain/usecases/worker/change_favorite_worker.dart';
import 'package:budgen/domain/usecases/worker/get_favorite_workers.dart';
import 'package:mobx/mobx.dart';
part 'favorite_store.g.dart';

class FavoriteStore = _FavoriteStore with _$FavoriteStore;

abstract class _FavoriteStore with Store {
  GetFavoriteWorkers _getFavoriteWorkers = GetFavoriteWorkers();
  GetFavoriteItems _getFavoriteItems = GetFavoriteItems();
  GetCurrentProject _getCurrentProject = GetCurrentProject();
  ChangeFavoriteWorker _changeFavoriteWorker = ChangeFavoriteWorker();
  ChangeFavoriteItem _changeFavoriteItem = ChangeFavoriteItem();
  AddItem _addItem = AddItem();
  AddWorker _addWorker = AddWorker();

  @observable
  List<Worker>? workers;

  @observable
  List<Item>? items;

  @observable
  int productQuantity = 0;

  @observable
  bool showItems = true;

  @observable
  bool isLoading = false;

  @observable
  Project? currentProject;

  Future<void> onInit() async {
    isLoading = true;
    await _sync();

    isLoading = false;
  }

  @action
  void showWorkersList() {
    showItems = false;
  }

  @action
  void showItemsList() {
    showItems = true;
  }

  @action
  Future<void> changeFavoriteWorker(Worker worker) async {
    isLoading = true;

    await _changeFavoriteWorker.call(worker);
    workers = await _getFavoriteWorkers.call();

    isLoading = false;
  }

  @action
  Future<void> changeFavoriteItem(Item item) async {
    isLoading = true;

    await _changeFavoriteItem.call(item);
    items = await _getFavoriteItems.call();

    isLoading = false;
  }

  @action
  Future<void> addItemToProject(Item item) async {
    await _addItem.call(
        item: item, project: currentProject!, qtd: productQuantity);
    currentProject = await _getCurrentProject.call();
  }

  @action
  Future<void> addWorkerToProject(Worker worker) async {
    await _addWorker.call(
        project: currentProject!, worker: worker, qtd: productQuantity);
    currentProject = await _getCurrentProject.call();
  }

  void changeProductQuantity(String? value) {
    int valueInt = value != null && value.isNotEmpty ? int.parse(value) : 0;
    productQuantity = valueInt;
  }

  bool get existsProject => currentProject != null;

  @action
  Future<void> _sync() async {
    items = [];
    workers = [];
    currentProject = null;

    workers = await _getFavoriteWorkers.call();
    items = await _getFavoriteItems.call();
    currentProject = await _getCurrentProject.call();
  }
}
