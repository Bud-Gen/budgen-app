// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  late final _$currentProjectAtom =
      Atom(name: '_HomeStore.currentProject', context: context);

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

  late final _$_workersAtom =
      Atom(name: '_HomeStore._workers', context: context);

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

  late final _$_itemsAtom = Atom(name: '_HomeStore._items', context: context);

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

  late final _$productQuantityAtom =
      Atom(name: '_HomeStore.productQuantity', context: context);

  @override
  int get productQuantity {
    _$productQuantityAtom.reportRead();
    return super.productQuantity;
  }

  @override
  set productQuantity(int value) {
    _$productQuantityAtom.reportWrite(value, super.productQuantity, () {
      super.productQuantity = value;
    });
  }

  late final _$projectNameAtom =
      Atom(name: '_HomeStore.projectName', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_HomeStore.isLoading', context: context);

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

  late final _$showItemsAtom =
      Atom(name: '_HomeStore.showItems', context: context);

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

  late final _$discountAtom =
      Atom(name: '_HomeStore.discount', context: context);

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

  late final _$errorMessageAtom =
      Atom(name: '_HomeStore.errorMessage', context: context);

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

  late final _$filterAtom = Atom(name: '_HomeStore.filter', context: context);

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

  late final _$addMockAsyncAction =
      AsyncAction('_HomeStore.addMock', context: context);

  @override
  Future<void> addMock() {
    return _$addMockAsyncAction.run(() => super.addMock());
  }

  late final _$onInitAsyncAction =
      AsyncAction('_HomeStore.onInit', context: context);

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  late final _$changeFavoriteItemAsyncAction =
      AsyncAction('_HomeStore.changeFavoriteItem', context: context);

  @override
  Future<void> changeFavoriteItem(Item item) {
    return _$changeFavoriteItemAsyncAction
        .run(() => super.changeFavoriteItem(item));
  }

  late final _$addItemToProjectAsyncAction =
      AsyncAction('_HomeStore.addItemToProject', context: context);

  @override
  Future<void> addItemToProject(Item item) {
    return _$addItemToProjectAsyncAction
        .run(() => super.addItemToProject(item));
  }

  late final _$addWorkerToProjectAsyncAction =
      AsyncAction('_HomeStore.addWorkerToProject', context: context);

  @override
  Future<void> addWorkerToProject(Worker worker) {
    return _$addWorkerToProjectAsyncAction
        .run(() => super.addWorkerToProject(worker));
  }

  late final _$changeFavoriteWorkerAsyncAction =
      AsyncAction('_HomeStore.changeFavoriteWorker', context: context);

  @override
  Future<void> changeFavoriteWorker(Worker worker) {
    return _$changeFavoriteWorkerAsyncAction
        .run(() => super.changeFavoriteWorker(worker));
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

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
productQuantity: ${productQuantity},
projectName: ${projectName},
isLoading: ${isLoading},
showItems: ${showItems},
discount: ${discount},
errorMessage: ${errorMessage},
filter: ${filter}
    ''';
  }
}
