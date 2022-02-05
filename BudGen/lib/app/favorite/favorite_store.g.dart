// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoriteStore on _FavoriteStore, Store {
  final _$itemsAtom = Atom(name: '_FavoriteStore.items');

  @override
  ObservableList<Item> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<Item> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$workersAtom = Atom(name: '_FavoriteStore.workers');

  @override
  ObservableList<Worker> get workers {
    _$workersAtom.reportRead();
    return super.workers;
  }

  @override
  set workers(ObservableList<Worker> value) {
    _$workersAtom.reportWrite(value, super.workers, () {
      super.workers = value;
    });
  }

  final _$itemsCountAtom = Atom(name: '_FavoriteStore.itemsCount');

  @override
  ObservableMap<String, int> get itemsCount {
    _$itemsCountAtom.reportRead();
    return super.itemsCount;
  }

  @override
  set itemsCount(ObservableMap<String, int> value) {
    _$itemsCountAtom.reportWrite(value, super.itemsCount, () {
      super.itemsCount = value;
    });
  }

  final _$workersCountAtom = Atom(name: '_FavoriteStore.workersCount');

  @override
  ObservableMap<String, int> get workersCount {
    _$workersCountAtom.reportRead();
    return super.workersCount;
  }

  @override
  set workersCount(ObservableMap<String, int> value) {
    _$workersCountAtom.reportWrite(value, super.workersCount, () {
      super.workersCount = value;
    });
  }

  final _$showItemsAtom = Atom(name: '_FavoriteStore.showItems');

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

  final _$onInitAsyncAction = AsyncAction('_FavoriteStore.onInit');

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  final _$reloadListsAsyncAction = AsyncAction('_FavoriteStore.reloadLists');

  @override
  Future<void> reloadLists() {
    return _$reloadListsAsyncAction.run(() => super.reloadLists());
  }

  final _$_FavoriteStoreActionController =
      ActionController(name: '_FavoriteStore');

  @override
  dynamic selectShowItems() {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.selectShowItems');
    try {
      return super.selectShowItems();
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic selectShowWorkers() {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.selectShowWorkers');
    try {
      return super.selectShowWorkers();
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unFavoriteItem(Item item) {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.unFavoriteItem');
    try {
      return super.unFavoriteItem(item);
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unFavoriteWorker(Worker worker) {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.unFavoriteWorker');
    try {
      return super.unFavoriteWorker(worker);
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseItemCount(String itemID) {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.decreaseItemCount');
    try {
      return super.decreaseItemCount(itemID);
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseWorkerCount(String workerID) {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.decreaseWorkerCount');
    try {
      return super.decreaseWorkerCount(workerID);
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseItemCount(String itemID) {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.increaseItemCount');
    try {
      return super.increaseItemCount(itemID);
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseWorkerCount(String workerID) {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.increaseWorkerCount');
    try {
      return super.increaseWorkerCount(workerID);
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items},
workers: ${workers},
itemsCount: ${itemsCount},
workersCount: ${workersCount},
showItems: ${showItems}
    ''';
  }
}
