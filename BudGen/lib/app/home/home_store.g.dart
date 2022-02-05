// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$countItemsListAtom = Atom(name: '_HomeStore.countItemsList');

  @override
  int get countItemsList {
    _$countItemsListAtom.reportRead();
    return super.countItemsList;
  }

  @override
  set countItemsList(int value) {
    _$countItemsListAtom.reportWrite(value, super.countItemsList, () {
      super.countItemsList = value;
    });
  }

  final _$needImportSpreadsheetAtom =
      Atom(name: '_HomeStore.needImportSpreadsheet');

  @override
  bool get needImportSpreadsheet {
    _$needImportSpreadsheetAtom.reportRead();
    return super.needImportSpreadsheet;
  }

  @override
  set needImportSpreadsheet(bool value) {
    _$needImportSpreadsheetAtom.reportWrite(value, super.needImportSpreadsheet,
        () {
      super.needImportSpreadsheet = value;
    });
  }

  final _$projectAtom = Atom(name: '_HomeStore.project');

  @override
  Project get project {
    _$projectAtom.reportRead();
    return super.project;
  }

  @override
  set project(Project value) {
    _$projectAtom.reportWrite(value, super.project, () {
      super.project = value;
    });
  }

  final _$itemsAtom = Atom(name: '_HomeStore.items');

  @override
  List<Item> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<Item> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$workersAtom = Atom(name: '_HomeStore.workers');

  @override
  List<Worker> get workers {
    _$workersAtom.reportRead();
    return super.workers;
  }

  @override
  set workers(List<Worker> value) {
    _$workersAtom.reportWrite(value, super.workers, () {
      super.workers = value;
    });
  }

  final _$onInitAsyncAction = AsyncAction('_HomeStore.onInit');

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  final _$newProjectAsyncAction = AsyncAction('_HomeStore.newProject');

  @override
  Future<void> newProject() {
    return _$newProjectAsyncAction.run(() => super.newProject());
  }

  final _$renameProjectAsyncAction = AsyncAction('_HomeStore.renameProject');

  @override
  Future<dynamic> renameProject(String name) {
    return _$renameProjectAsyncAction.run(() => super.renameProject(name));
  }

  final _$finishActualProjectAsyncAction =
      AsyncAction('_HomeStore.finishActualProject');

  @override
  Future<void> finishActualProject(BuildContext context) {
    return _$finishActualProjectAsyncAction
        .run(() => super.finishActualProject(context));
  }

  final _$changeItemQuantityAsyncAction =
      AsyncAction('_HomeStore.changeItemQuantity');

  @override
  Future<dynamic> changeItemQuantity(String id, int qtd) {
    return _$changeItemQuantityAsyncAction
        .run(() => super.changeItemQuantity(id, qtd));
  }

  final _$changeLaborsQuantityAsyncAction =
      AsyncAction('_HomeStore.changeLaborsQuantity');

  @override
  Future<dynamic> changeLaborsQuantity(String id, int qtd) {
    return _$changeLaborsQuantityAsyncAction
        .run(() => super.changeLaborsQuantity(id, qtd));
  }

  final _$deleteItemAsyncAction = AsyncAction('_HomeStore.deleteItem');

  @override
  Future<dynamic> deleteItem(String id) {
    return _$deleteItemAsyncAction.run(() => super.deleteItem(id));
  }

  final _$deleteWorkerAsyncAction = AsyncAction('_HomeStore.deleteWorker');

  @override
  Future<dynamic> deleteWorker(String id) {
    return _$deleteWorkerAsyncAction.run(() => super.deleteWorker(id));
  }

  @override
  String toString() {
    return '''
countItemsList: ${countItemsList},
needImportSpreadsheet: ${needImportSpreadsheet},
project: ${project},
items: ${items},
workers: ${workers}
    ''';
  }
}
