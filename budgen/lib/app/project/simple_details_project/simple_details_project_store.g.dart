// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_details_project_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SimpleDetailsProjectStore on _SimpleDetailsProjectStore, Store {
  late final _$currentProjectAtom =
      Atom(name: '_SimpleDetailsProjectStore.currentProject', context: context);

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
      Atom(name: '_SimpleDetailsProjectStore._workers', context: context);

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

  late final _$_itemsAtom =
      Atom(name: '_SimpleDetailsProjectStore._items', context: context);

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

  late final _$productQuantityAtom = Atom(
      name: '_SimpleDetailsProjectStore.productQuantity', context: context);

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
      Atom(name: '_SimpleDetailsProjectStore.projectName', context: context);

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

  late final _$projectEmailAtom =
      Atom(name: '_SimpleDetailsProjectStore.projectEmail', context: context);

  @override
  String get projectEmail {
    _$projectEmailAtom.reportRead();
    return super.projectEmail;
  }

  @override
  set projectEmail(String value) {
    _$projectEmailAtom.reportWrite(value, super.projectEmail, () {
      super.projectEmail = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_SimpleDetailsProjectStore.isLoading', context: context);

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
      Atom(name: '_SimpleDetailsProjectStore.showItems', context: context);

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
      Atom(name: '_SimpleDetailsProjectStore.discount', context: context);

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
      Atom(name: '_SimpleDetailsProjectStore.errorMessage', context: context);

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

  late final _$filterAtom =
      Atom(name: '_SimpleDetailsProjectStore.filter', context: context);

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

  late final _$onInitAsyncAction =
      AsyncAction('_SimpleDetailsProjectStore.onInit', context: context);

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  late final _$alterItemQuantityAsyncAction = AsyncAction(
      '_SimpleDetailsProjectStore.alterItemQuantity',
      context: context);

  @override
  Future<void> alterItemQuantity(int value, Item item) {
    return _$alterItemQuantityAsyncAction
        .run(() => super.alterItemQuantity(value, item));
  }

  late final _$removeItemAsyncAction =
      AsyncAction('_SimpleDetailsProjectStore.removeItem', context: context);

  @override
  Future<void> removeItem(Item item) {
    return _$removeItemAsyncAction.run(() => super.removeItem(item));
  }

  late final _$removeWorkerAsyncAction =
      AsyncAction('_SimpleDetailsProjectStore.removeWorker', context: context);

  @override
  Future<void> removeWorker(Worker worker) {
    return _$removeWorkerAsyncAction.run(() => super.removeWorker(worker));
  }

  late final _$addDiscountAsyncAction =
      AsyncAction('_SimpleDetailsProjectStore.addDiscount', context: context);

  @override
  Future<void> addDiscount() {
    return _$addDiscountAsyncAction.run(() => super.addDiscount());
  }

  late final _$finishProjectAsyncAction =
      AsyncAction('_SimpleDetailsProjectStore.finishProject', context: context);

  @override
  Future<bool> finishProject() {
    return _$finishProjectAsyncAction.run(() => super.finishProject());
  }

  late final _$_SimpleDetailsProjectStoreActionController =
      ActionController(name: '_SimpleDetailsProjectStore', context: context);

  @override
  void changeFilter(String value) {
    final _$actionInfo = _$_SimpleDetailsProjectStoreActionController
        .startAction(name: '_SimpleDetailsProjectStore.changeFilter');
    try {
      return super.changeFilter(value);
    } finally {
      _$_SimpleDetailsProjectStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeProjectName(String value) {
    final _$actionInfo = _$_SimpleDetailsProjectStoreActionController
        .startAction(name: '_SimpleDetailsProjectStore.changeProjectName');
    try {
      return super.changeProjectName(value);
    } finally {
      _$_SimpleDetailsProjectStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void viewItems(bool showItem) {
    final _$actionInfo = _$_SimpleDetailsProjectStoreActionController
        .startAction(name: '_SimpleDetailsProjectStore.viewItems');
    try {
      return super.viewItems(showItem);
    } finally {
      _$_SimpleDetailsProjectStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool getExistsProject() {
    final _$actionInfo = _$_SimpleDetailsProjectStoreActionController
        .startAction(name: '_SimpleDetailsProjectStore.getExistsProject');
    try {
      return super.getExistsProject();
    } finally {
      _$_SimpleDetailsProjectStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void navigateToHome() {
    final _$actionInfo = _$_SimpleDetailsProjectStoreActionController
        .startAction(name: '_SimpleDetailsProjectStore.navigateToHome');
    try {
      return super.navigateToHome();
    } finally {
      _$_SimpleDetailsProjectStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editDiscount(String newDiscount) {
    final _$actionInfo = _$_SimpleDetailsProjectStoreActionController
        .startAction(name: '_SimpleDetailsProjectStore.editDiscount');
    try {
      return super.editDiscount(newDiscount);
    } finally {
      _$_SimpleDetailsProjectStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editEmailProject(String email) {
    final _$actionInfo = _$_SimpleDetailsProjectStoreActionController
        .startAction(name: '_SimpleDetailsProjectStore.editEmailProject');
    try {
      return super.editEmailProject(email);
    } finally {
      _$_SimpleDetailsProjectStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentProject: ${currentProject},
productQuantity: ${productQuantity},
projectName: ${projectName},
projectEmail: ${projectEmail},
isLoading: ${isLoading},
showItems: ${showItems},
discount: ${discount},
errorMessage: ${errorMessage},
filter: ${filter}
    ''';
  }
}
