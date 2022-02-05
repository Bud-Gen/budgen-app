import 'package:BudGen/data/remote/google_auth.dart';
import 'package:BudGen/domain/api_services/api_handler.dart';
import 'package:BudGen/domain/entities/item.dart';
import 'package:BudGen/domain/entities/project.dart';
import 'package:BudGen/domain/entities/user.dart';
import 'package:BudGen/domain/entities/worker.dart';
import 'package:BudGen/domain/usecases/project/finish_project.dart';
import 'package:BudGen/domain/usecases/project/get_items_project.dart';
import 'package:BudGen/domain/usecases/project/get_unfinished_project.dart';
import 'package:BudGen/domain/usecases/project/get_workers_project.dart';
import 'package:BudGen/domain/usecases/project/insert_project.dart';
import 'package:BudGen/domain/usecases/project/remove_item.dart';
import 'package:BudGen/domain/usecases/project/remove_worker.dart';
import 'package:BudGen/domain/usecases/project/rename_project.dart';
import 'package:BudGen/utils/widgets/custom_dialog/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  GoogleAuth googleAuth = new GoogleAuth();
  InsertProject _insertProject = InsertProject();
  GetUnfinishedProject _getUnfinishedProject = GetUnfinishedProject();
  RenameProject _renameProject = new RenameProject();
  FinishProject finishProject = new FinishProject();
  GetItemsProject _getItems = new GetItemsProject();
  GetWorkersProject _getWorkers = new GetWorkersProject();
  RemoveItem _removeItem = new RemoveItem();
  RemoveWorker _removeWorker = new RemoveWorker();

  @observable
  int countItemsList = 0;

  @observable
  bool needImportSpreadsheet = false;

  @observable
  Project project;

  @observable
  List<Item> items;

  @observable
  List<Worker> workers;

  @action
  Future<void> onInit() async {
    project = await _getUnfinishedProject.call();
    items = await _getItems.call(project.id);
    workers = await _getWorkers.call(project.id);
  }

  @action
  Future<void> newProject() async {
    await _insertProject.newProject();
    await onInit();
  }

  @action
  Future<dynamic> renameProject(String name) async {
    project = await _renameProject.call(project.id, name);
  }

  @action
  Future<void> finishActualProject(BuildContext context) async {
    UserCredentials user = await googleAuth.getGoogleUser();
    finishProject.call(project.id);
    print(project.workers);
    print(project.workers);

    Map<String, dynamic> response = await finishProjectRemote(user, project);
    CustomDialog.openDialog(context, "Projeto", response["message"]);
  }

  @action
  Future<dynamic> changeItemQuantity(String id, int qtd) async {
    if (qtd <= 0) {
      return;
    }

    project.items[id] = qtd;

    double totalPrice = 0;

    print(project.items);

    for (Item i in items) {
      int qtd = project.items[i.id];
      double value = qtd * i.price;
      totalPrice += value;
    }

    for (Worker i in workers) {
      int qtd = project.workers[i.id];
      totalPrice += (qtd * i.price);
    }

    Project p = new Project(
        id: project.id,
        name: project.name,
        email: project.email,
        workers: project.workers,
        items: project.items,
        isFinished: project.isFinished,
        price: totalPrice,
        discount: project.discount,
        createdAt: project.createdAt,
        createdBy: project.createdBy,
        deletedBy: project.deletedBy);

    project = p;
  }

  @action
  Future<dynamic> changeLaborsQuantity(String id, int qtd) async {
    if (qtd <= 0) {
      return;
    }
    project.workers[id] = qtd;

    double totalPrice = 0;

    for (Item i in items) {
      int qtd = project.items[i.id];
      double value = qtd * i.price;
      totalPrice += value;
    }

    for (Worker i in workers) {
      int qtd = project.workers[i.id];
      totalPrice += (qtd * i.price);
    }

    Project p = new Project(
        id: project.id,
        name: project.name,
        email: project.email,
        workers: project.workers,
        items: project.items,
        isFinished: project.isFinished,
        price: totalPrice,
        discount: project.discount,
        createdAt: project.createdAt,
        createdBy: project.createdBy,
        deletedBy: project.deletedBy);

    project = p;
  }

  @action
  Future<dynamic> deleteItem(String id) async {
    await _removeItem.call(project.id, id);

    for (Item i in items) {
      if (i.id == id) {
        items.remove(i);
        break;
      }
    }
    items = items;
  }

  @action
  Future<dynamic> deleteWorker(String id) async {
    await _removeWorker.call(project.id, id);

    for (Worker i in workers) {
      if (i.id == id) {
        workers.remove(i);
        break;
      }
    }
    workers = workers;
  }
}
