import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/item/change_favorite_item.dart';
import 'package:budgen/domain/usecases/item/get_items.dart';
import 'package:budgen/domain/usecases/mock_data.dart';
import 'package:budgen/domain/usecases/project/add_item.dart';
import 'package:budgen/domain/usecases/project/add_worker.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:budgen/domain/usecases/project/insert_project.dart';
import 'package:budgen/domain/usecases/worker/change_favorite_worker.dart';
import 'package:budgen/domain/usecases/worker/get_workers.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  late BuildContext pageContext;
  GetCurrentProject _getCurrentProject = GetCurrentProject();
  InsertProject _insertProject = InsertProject();

  ChangeFavoriteItem _changeFavoriteItem = ChangeFavoriteItem();
  ChangeFavoriteWorker _changeFavoriteWorker = ChangeFavoriteWorker();

  GetItems _getItems = GetItems();
  GetWorkers _getWorkers = GetWorkers();

  AddItem _addItem = AddItem();
  AddWorker _addWorker = AddWorker();

  @observable
  Project? currentProject;

  @observable
  List<Worker>? _workers;

  @observable
  List<Item>? _items;

  @observable
  int productQuantity = 0;

  @observable
  String? projectName;

  @observable
  bool isLoading = false;

  @observable
  bool showItems = true;

  @observable
  double discount = 0;

  @observable
  String? errorMessage;

  @observable
  String filter = '';

  @action
  Future<void> addMock() async {
    MockData mockData = MockData();
    isLoading = true;
    await mockData.call();

    isLoading = false;
  }

  @action
  Future<void> onInit() async {
    await _sync();
  }

  @action
  void changeFilter(String value) => filter = value.toLowerCase();

  @action
  void changeProjectName(String value) => projectName = value;

  Future<void> _sync() async {
    currentProject = null;
    isLoading = true;
    currentProject = await _getCurrentProject.call();

    _workers = await _getWorkers.all();
    _items = await _getItems.all();
    isLoading = false;
  }

  @action
  void viewItems(bool showItem) {
    if (showItem)
      showItems = true;
    else
      showItems = false;
  }

  @action
  bool getExistsProject() => currentProject != null;

  Future<void> initProject() async {
    isLoading = true;
    await _insertProject.withName(projectName ?? "Novo projeto");
    currentProject = await _getCurrentProject.call();

    isLoading = false;
  }

  @action
  Future<void> changeFavoriteItem(Item item) async {
    isLoading = true;

    await _changeFavoriteItem.call(item);
    _items = await _getItems.all();

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

  @action
  Future<void> changeFavoriteWorker(Worker worker) async {
    isLoading = true;

    await _changeFavoriteWorker.call(worker);
    _workers = await _getWorkers.all();

    isLoading = false;
  }

  void changeProductQuantity(String? value) {
    int valueInt = value != null && value.isNotEmpty ? int.parse(value) : 0;
    productQuantity = valueInt;
  }

  List<Item>? get items => filter != ''
      ? _items!
          .where((item) => item.name!.toLowerCase().contains(filter))
          .toList()
      : _items!;

  List<Worker>? get workers => filter != ''
      ? _workers!
          .where((worker) => worker.name!.toLowerCase().contains(filter))
          .toList()
      : _workers!;

  bool get isEmpty => this.items!.isEmpty && this.workers!.isEmpty;
}
