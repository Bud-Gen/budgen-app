import 'package:budgen/app/home/home_page.dart';
import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/project/add_discount.dart';
import 'package:budgen/domain/usecases/project/alter_quantity.dart';
import 'package:budgen/domain/usecases/project/finish_project.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:budgen/domain/usecases/project/get_items_project.dart';
import 'package:budgen/domain/usecases/project/get_workers_project.dart';
import 'package:budgen/domain/usecases/project/insert_project.dart';
import 'package:budgen/domain/usecases/project/remove_item.dart';
import 'package:budgen/domain/usecases/project/remove_worker.dart';
import 'package:budgen/domain/usecases/project/send_email.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'simple_details_project_store.g.dart';

class SimpleDetailsProjectStore = _SimpleDetailsProjectStore
    with _$SimpleDetailsProjectStore;

abstract class _SimpleDetailsProjectStore with Store {
  late BuildContext pageContext;
  GetCurrentProject _getCurrentProject = GetCurrentProject();
  InsertProject _insertProject = InsertProject();

  GetItemsProject _getItemsProject = GetItemsProject();
  GetWorkersProject _getWorkersProject = GetWorkersProject();

  SendEmail _sendEmail = SendEmail(GoogleAuth());
  FinishProject _finishProject = FinishProject();
  AlterQuantity _alterQuantity = AlterQuantity();
  RemoveItem _removeItem = RemoveItem();
  RemoveWorker _removeWorker = RemoveWorker();
  AddDiscount _addDiscount = AddDiscount();

  @observable
  Project? currentProject;

  @observable
  List<Worker>? _workers = [];

  @observable
  List<Item>? _items = [];

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

    _workers = await _getWorkersProject.call(currentProject);
    _items = await _getItemsProject.call(currentProject);
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
  void navigateToHome() {
    Navigator.of(pageContext).pushReplacement(MaterialPageRoute(
      builder: (context) => HomePage(),
    ));
  }

  @action
  void editDiscount(String newDiscount) =>
      discount = double.tryParse(newDiscount)!;

  @action
  Future<void> addDiscount() async {
    if (discount > currentProject!.price) {
      errorMessage =
          "Não é possível adicionar um desconto maior que o valor do projeto";
      return;
    }
    if (discount == 0 || currentProject == null) return;
    isLoading = true;
    await _addDiscount.call(currentProject!, discount);
    await _sync();
    isLoading = false;
  }

  @action
  void editEmailProject(String email) => projectEmail = email;

  @action
  Future<bool> finishProject() async {
    bool isEmailSent = await _sendEmail.call(projectEmail, currentProject!);

    if (!isEmailSent) {
      return false;
    }
    await _finishProject.call(currentProject!, projectEmail);

    return true;
  }

  void changeProductQuantity(String? value) {
    int valueInt = value != null && value.isNotEmpty ? int.parse(value) : 0;
    productQuantity = valueInt;
  }

  bool hasItems() {
    if (items == null) return false;
    if (items!.isEmpty) return false;
    return true;
  }

  bool hasWorkers() {
    if (workers == null) return false;
    if (workers!.isEmpty) return false;
    return true;
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
