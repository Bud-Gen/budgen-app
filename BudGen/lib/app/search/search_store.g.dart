// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchStore on _SearchStore, Store {
  final _$itemsAtom = Atom(name: '_SearchStore.items');

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

  final _$workersAtom = Atom(name: '_SearchStore.workers');

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

  final _$itemsCountAtom = Atom(name: '_SearchStore.itemsCount');

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

  final _$workersCountAtom = Atom(name: '_SearchStore.workersCount');

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

  final _$showItemsAtom = Atom(name: '_SearchStore.showItems');

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

  final _$filterTextAtom = Atom(name: '_SearchStore.filterText');

  @override
  String get filterText {
    _$filterTextAtom.reportRead();
    return super.filterText;
  }

  @override
  set filterText(String value) {
    _$filterTextAtom.reportWrite(value, super.filterText, () {
      super.filterText = value;
    });
  }

  final _$onInitAsyncAction = AsyncAction('_SearchStore.onInit');

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  final _$reloadListsAsyncAction = AsyncAction('_SearchStore.reloadLists');

  @override
  Future<void> reloadLists() {
    return _$reloadListsAsyncAction.run(() => super.reloadLists());
  }

  final _$_SearchStoreActionController = ActionController(name: '_SearchStore');

  @override
  void showItemsEnabled() {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.showItemsEnabled');
    try {
      return super.showItemsEnabled();
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showWorkersEnabled() {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.showWorkersEnabled');
    try {
      return super.showWorkersEnabled();
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateFilterText(String newText) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.updateFilterText');
    try {
      return super.updateFilterText(newText);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateShownLists() {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.updateShownLists');
    try {
      return super.updateShownLists();
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void favoriteItem(Item item) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.favoriteItem');
    try {
      return super.favoriteItem(item);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void favoriteWorker(Worker worker) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.favoriteWorker');
    try {
      return super.favoriteWorker(worker);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseItemCount(String itemID) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.decreaseItemCount');
    try {
      return super.decreaseItemCount(itemID);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseWorkerCount(String workerID) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.decreaseWorkerCount');
    try {
      return super.decreaseWorkerCount(workerID);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseItemCount(String itemID) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.increaseItemCount');
    try {
      return super.increaseItemCount(itemID);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseWorkerCount(String workerID) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.increaseWorkerCount');
    try {
      return super.increaseWorkerCount(workerID);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items},
workers: ${workers},
itemsCount: ${itemsCount},
workersCount: ${workersCount},
showItems: ${showItems},
filterText: ${filterText}
    ''';
  }
}
