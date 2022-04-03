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

  final _$workersAtom = Atom(name: '_HomeStore.workers');

  @override
  List<Worker>? get workers {
    _$workersAtom.reportRead();
    return super.workers;
  }

  @override
  set workers(List<Worker>? value) {
    _$workersAtom.reportWrite(value, super.workers, () {
      super.workers = value;
    });
  }

  final _$itemsAtom = Atom(name: '_HomeStore.items');

  @override
  List<Item>? get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<Item>? value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
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

  final _$projectEmailAtom = Atom(name: '_HomeStore.projectEmail');

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

  final _$renameProjectAsyncAction = AsyncAction('_HomeStore.renameProject');

  @override
  Future<void> renameProject() {
    return _$renameProjectAsyncAction.run(() => super.renameProject());
  }

  final _$addNewProjectAsyncAction = AsyncAction('_HomeStore.addNewProject');

  @override
  Future<void> addNewProject() {
    return _$addNewProjectAsyncAction.run(() => super.addNewProject());
  }

  final _$finishProjectAsyncAction = AsyncAction('_HomeStore.finishProject');

  @override
  Future<bool> finishProject() {
    return _$finishProjectAsyncAction.run(() => super.finishProject());
  }

  final _$addDiscountAsyncAction = AsyncAction('_HomeStore.addDiscount');

  @override
  Future<void> addDiscount() {
    return _$addDiscountAsyncAction.run(() => super.addDiscount());
  }

  final _$alterItemQuantityAsyncAction =
      AsyncAction('_HomeStore.alterItemQuantity');

  @override
  Future<void> alterItemQuantity(int value, Item item) {
    return _$alterItemQuantityAsyncAction
        .run(() => super.alterItemQuantity(value, item));
  }

  final _$removeItemAsyncAction = AsyncAction('_HomeStore.removeItem');

  @override
  Future<void> removeItem(Item item) {
    return _$removeItemAsyncAction.run(() => super.removeItem(item));
  }

  final _$removeWorkerAsyncAction = AsyncAction('_HomeStore.removeWorker');

  @override
  Future<void> removeWorker(Worker worker) {
    return _$removeWorkerAsyncAction.run(() => super.removeWorker(worker));
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  String getProjectName() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.getProjectName');
    try {
      return super.getProjectName();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editDiscount(String newDiscount) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.editDiscount');
    try {
      return super.editDiscount(newDiscount);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editProjectName(String newName) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.editProjectName');
    try {
      return super.editProjectName(newName);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editEmailProject(String email) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.editEmailProject');
    try {
      return super.editEmailProject(email);
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
workers: ${workers},
items: ${items},
projectName: ${projectName},
projectEmail: ${projectEmail},
isLoading: ${isLoading},
discount: ${discount},
errorMessage: ${errorMessage}
    ''';
  }
}
