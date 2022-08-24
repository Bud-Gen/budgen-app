// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoriteStore on _FavoriteStore, Store {
  late final _$workersAtom =
      Atom(name: '_FavoriteStore.workers', context: context);

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

  late final _$itemsAtom = Atom(name: '_FavoriteStore.items', context: context);

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

  late final _$productQuantityAtom =
      Atom(name: '_FavoriteStore.productQuantity', context: context);

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

  late final _$showItemsAtom =
      Atom(name: '_FavoriteStore.showItems', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_FavoriteStore.isLoading', context: context);

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

  late final _$currentProjectAtom =
      Atom(name: '_FavoriteStore.currentProject', context: context);

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

  late final _$changeFavoriteWorkerAsyncAction =
      AsyncAction('_FavoriteStore.changeFavoriteWorker', context: context);

  @override
  Future<void> changeFavoriteWorker(Worker worker) {
    return _$changeFavoriteWorkerAsyncAction
        .run(() => super.changeFavoriteWorker(worker));
  }

  late final _$changeFavoriteItemAsyncAction =
      AsyncAction('_FavoriteStore.changeFavoriteItem', context: context);

  @override
  Future<void> changeFavoriteItem(Item item) {
    return _$changeFavoriteItemAsyncAction
        .run(() => super.changeFavoriteItem(item));
  }

  late final _$addItemToProjectAsyncAction =
      AsyncAction('_FavoriteStore.addItemToProject', context: context);

  @override
  Future<void> addItemToProject(Item item) {
    return _$addItemToProjectAsyncAction
        .run(() => super.addItemToProject(item));
  }

  late final _$addWorkerToProjectAsyncAction =
      AsyncAction('_FavoriteStore.addWorkerToProject', context: context);

  @override
  Future<void> addWorkerToProject(Worker worker) {
    return _$addWorkerToProjectAsyncAction
        .run(() => super.addWorkerToProject(worker));
  }

  late final _$_syncAsyncAction =
      AsyncAction('_FavoriteStore._sync', context: context);

  @override
  Future<void> _sync() {
    return _$_syncAsyncAction.run(() => super._sync());
  }

  late final _$_FavoriteStoreActionController =
      ActionController(name: '_FavoriteStore', context: context);

  @override
  void showWorkersList() {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.showWorkersList');
    try {
      return super.showWorkersList();
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showItemsList() {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.showItemsList');
    try {
      return super.showItemsList();
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
workers: ${workers},
items: ${items},
productQuantity: ${productQuantity},
showItems: ${showItems},
isLoading: ${isLoading},
currentProject: ${currentProject}
    ''';
  }
}
