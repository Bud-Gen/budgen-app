import 'package:budgen/app/home/home_page.dart';
import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/item/change_favorite_item.dart';
import 'package:budgen/domain/usecases/item/get_items.dart';
import 'package:budgen/domain/usecases/mock_data.dart';
import 'package:budgen/domain/usecases/project/add_item.dart';
import 'package:budgen/domain/usecases/project/add_worker.dart';
import 'package:budgen/domain/usecases/project/alter_quantity.dart';
import 'package:budgen/domain/usecases/project/finish_project.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:budgen/domain/usecases/project/insert_project.dart';
import 'package:budgen/domain/usecases/project/remove_item.dart';
import 'package:budgen/domain/usecases/project/remove_worker.dart';
import 'package:budgen/domain/usecases/project/send_email.dart';
import 'package:budgen/domain/usecases/worker/change_favorite_worker.dart';
import 'package:budgen/domain/usecases/worker/get_workers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'simple_details_project_store.g.dart';

class SimpleDetailsProjectStore = _SimpleDetailsProjectStore with _$SimpleDetailsProjectStore;

abstract class _SimpleDetailsProjectStore with Store {
  late BuildContext pageContext;
  GetCurrentProject _getCurrentProject = GetCurrentProject();
  InsertProject _insertProject = InsertProject();

  ChangeFavoriteItem _changeFavoriteItem = ChangeFavoriteItem();
  ChangeFavoriteWorker _changeFavoriteWorker = ChangeFavoriteWorker();

  GetItems _getItems = GetItems();
  GetWorkers _getWorkers = GetWorkers();

  AddItem _addItem = AddItem();
  AddWorker _addWorker = AddWorker();

  SendEmail _sendEmail = SendEmail(GoogleAuth());
  FinishProject _finishProject = FinishProject();

  AlterQuantity _alterQuantity = AlterQuantity();
  RemoveItem _removeItem = RemoveItem();
  RemoveWorker _removeWorker = RemoveWorker();

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
  String projectEmail = "";

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

  @action
  Future<void> alterItemQuantity(int value, Item item) async {
    final qtd = (currentProject!.items![item.id] as int);

    if (qtd == 1 && value < 0) return;

    await _alterQuantity.item(item, currentProject!, value);
    await _sync();
  }

  Future<void> alterWorkerQuantity(int value, Worker worker) async {
    final qtd = (currentProject!.workers![worker.id] as int);

    if (qtd == 1 && value < 0) return;

    await _alterQuantity.worker(worker, currentProject!, value);
    await _sync();
  }

  @action
  Future<void> removeItem(Item item) async {
    await _removeItem.call(currentProject!, item);
    await _sync();
  }

  @action
  Future<void> removeWorker(Worker worker) async {
    await _removeWorker.call(currentProject!, worker);
    await _sync();
  }

  @action
  void navigateToHome(){
    Navigator.of(pageContext).pushReplacement(MaterialPageRoute(
      builder: (context) => HomePage(),
    ));
  }

  @action
  void editEmailProject(String email) => projectEmail = email;

  @action
  Future<bool> finishProject() async {
    bool isEmailSent = await _sendEmail.call(projectEmail, currentProject!);

    print(isEmailSent);
    print(projectEmail);

    if (!isEmailSent) {
      return false;
    }

    await _finishProject.call(currentProject!, projectEmail);
    currentProject = null;
    _workers = null;
    _items = null;
    await _sync();

    return true;
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
