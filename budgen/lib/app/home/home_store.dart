import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/domain/api_services/api_handler.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/mock_data.dart';
import 'package:budgen/domain/usecases/project/add_discount.dart';
import 'package:budgen/domain/usecases/project/alter_quantity.dart';
import 'package:budgen/domain/usecases/project/finish_project.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:budgen/domain/usecases/project/get_items_project.dart';
import 'package:budgen/domain/usecases/project/get_workers_project.dart';
import 'package:budgen/domain/usecases/project/insert_project.dart';
import 'package:budgen/domain/usecases/project/remove_item.dart';
import 'package:budgen/domain/usecases/project/remove_worker.dart';
import 'package:budgen/domain/usecases/project/rename_project.dart';
import 'package:budgen/domain/usecases/project/send_email.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  late BuildContext pageContext;
  GetCurrentProject _getCurrentProject = GetCurrentProject();
  RenameProject _renameProject = RenameProject();
  FinishProject _finishProject = FinishProject();
  InsertProject _insertProject = InsertProject();
  AddDiscount _addDiscount = AddDiscount();
  GetItemsProject _getItemsProject = GetItemsProject();
  GetWorkersProject _getWorkersProject = GetWorkersProject();
  AlterQuantity _alterQuantity = AlterQuantity();
  RemoveItem _removeItem = RemoveItem();
  RemoveWorker _removeWorker = RemoveWorker();
  SendEmail _sendEmail = SendEmail(GoogleAuth());

  @observable
  Project? currentProject;

  @observable
  List<Worker>? workers;

  @observable
  List<Item>? items;

  @observable
  String? projectName;

  @observable
  String projectEmail = "";

  @observable
  bool isLoading = false;

  @observable
  double discount = 0;

  @observable
  String? errorMessage;

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
  Future<void> renameProject() async {
    if (projectName!.isEmpty) return;
    await _renameProject.call(currentProject!, projectName!);
    await _sync();
  }

  @action
  Future<void> addNewProject() async {
    await _insertProject.withName(projectName ?? "Novo projeto");
    await _sync();
  }

  @action
  Future<bool> finishProject() async {
    bool isEmailSent = await _sendEmail.call(projectEmail);

    if (!isEmailSent) {
      return false;
    }

    await _finishProject.call(currentProject!, projectEmail);
    currentProject = null;
    workers = null;
    items = null;
    await _sync();

    return true;
  }

  Future<void> _sync() async {
    currentProject = null;
    isLoading = true;
    currentProject = await _getCurrentProject.call();

    workers = await _getWorkersProject.call(currentProject);
    items = await _getItemsProject.call(currentProject);
    isLoading = false;
  }

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
  void editDiscount(String newDiscount) =>
      discount = double.tryParse(newDiscount)!;

  @action
  void editProjectName(String newName) => projectName = newName;

  @action
  void editEmailProject(String email) => projectEmail = email;

  bool get showProducts => (!isLoading && currentProject != null);

  bool get existsProject => currentProject != null;

  bool get isProjectEmpty => (items!.isEmpty & workers!.isEmpty);
}
