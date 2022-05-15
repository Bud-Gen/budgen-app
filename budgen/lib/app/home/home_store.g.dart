// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$currentProjectAtom = Atom(name: '_HomeStore.currentProject');

  @override
  Project? get currentProject {
    _$currentProjectAtom.reportRead();
    return super.currentProject;
  }

  @override
  set currentProject(Project? value) {
    _$currentProjectAtom.reportWrite(value, super.currentProject, () {
      super.currentProject = value;
    });
  }

  final _$_workersAtom = Atom(name: '_HomeStore._workers');

  @override
  List<Worker>? get _workers {
    _$_workersAtom.reportRead();
    return super._workers;
  }

  @override
  set _workers(List<Worker>? value) {
    _$_workersAtom.reportWrite(value, super._workers, () {
      super._workers = value;
    });
  }

  final _$_itemsAtom = Atom(name: '_HomeStore._items');

  @override
  List<Item>? get _items {
    _$_itemsAtom.reportRead();
    return super._items;
  }

  @override
  set _items(List<Item>? value) {
    _$_itemsAtom.reportWrite(value, super._items, () {
      super._items = value;
    });
  }

  final _$projectNameAtom = Atom(name: '_HomeStore.projectName');

  @override
  String? get projectName {
    _$projectNameAtom.reportRead();
    return super.projectName;
  }

  @override
  set projectName(String? value) {
    _$projectNameAtom.reportWrite(value, super.projectName, () {
      super.projectName = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_HomeStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$showItemsAtom = Atom(name: '_HomeStore.showItems');

  @override
  bool get showItems {
    _$showItemsAtom.reportRead();
    return super.showItems;
  }

  @override
  set showItems(bool value) {
    _$showItemsAtom.reportWrite(value, super.showItems, () {
      super.showItems = value;
    });
  }

  final _$discountAtom = Atom(name: '_HomeStore.discount');

  @override
  double get discount {
    _$discountAtom.reportRead();
    return super.discount;
  }

  @override
  set discount(double value) {
    _$discountAtom.reportWrite(value, super.discount, () {
      super.discount = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_HomeStore.errorMessage');

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$filterAtom = Atom(name: '_HomeStore.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$addMockAsyncAction = AsyncAction('_HomeStore.addMock');

  @override
  Future<void> addMock() {
    return _$addMockAsyncAction.run(() => super.addMock());
  }

  final _$onInitAsyncAction = AsyncAction('_HomeStore.onInit');

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  final _$changeFavoriteItemAsyncAction =
      AsyncAction('_HomeStore.changeFavoriteItem');

  @override
  Future<void> changeFavoriteItem(Item item) {
    return _$changeFavoriteItemAsyncAction
        .run(() => super.changeFavoriteItem(item));
  }

  final _$addItemToProjectAsyncAction =
      AsyncAction('_HomeStore.addItemToProject');

  @override
  Future<void> addItemToProject(Item item) {
    return _$addItemToProjectAsyncAction
        .run(() => super.addItemToProject(item));
  }

  final _$addWorkerToProjectAsyncAction =
      AsyncAction('_HomeStore.addWorkerToProject');

  @override
  Future<void> addWorkerToProject(Worker worker) {
    return _$addWorkerToProjectAsyncAction
        .run(() => super.addWorkerToProject(worker));
  }

  final _$changeFavoriteWorkerAsyncAction =
      AsyncAction('_HomeStore.changeFavoriteWorker');

  @override
  Future<void> changeFavoriteWorker(Worker worker) {
    return _$changeFavoriteWorkerAsyncAction
        .run(() => super.changeFavoriteWorker(worker));
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void changeFilter(String value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.changeFilter');
    try {
      return super.changeFilter(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeProjectName(String value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.changeProjectName');
    try {
      return super.changeProjectName(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void viewItems(bool showItem) {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.viewItems');
    try {
      return super.viewItems(showItem);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool getExistsProject() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.getExistsProject');
    try {
      return super.getExistsProject();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentProject: ${currentProject},
projectName: ${projectName},
isLoading: ${isLoading},
showItems: ${showItems},
discount: ${discount},
errorMessage: ${errorMessage},
filter: ${filter}
    ''';
  }
}
