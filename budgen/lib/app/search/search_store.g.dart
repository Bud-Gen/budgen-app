// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchStore on _SearchStore, Store {
  Computed<List<Item>?>? _$filteredItemsListComputed;

  @override
  List<Item>? get filteredItemsList => (_$filteredItemsListComputed ??=
          Computed<List<Item>?>(() => super.filteredItemsList,
              name: '_SearchStore.filteredItemsList'))
      .value;
  Computed<List<Worker>?>? _$filteredWorkersListComputed;

  @override
  List<Worker>? get filteredWorkersList => (_$filteredWorkersListComputed ??=
          Computed<List<Worker>?>(() => super.filteredWorkersList,
              name: '_SearchStore.filteredWorkersList'))
      .value;

  late final _$workersAtom =
      Atom(name: '_SearchStore.workers', context: context);

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

  late final _$itemsAtom = Atom(name: '_SearchStore.items', context: context);

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

  late final _$currentProjectAtom =
      Atom(name: '_SearchStore.currentProject', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_SearchStore.isLoading', context: context);

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
      Atom(name: '_SearchStore.showItems', context: context);

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

  late final _$searchTextAtom =
      Atom(name: '_SearchStore.searchText', context: context);

  @override
  String get searchText {
    _$searchTextAtom.reportRead();
    return super.searchText;
  }

  @override
  set searchText(String value) {
    _$searchTextAtom.reportWrite(value, super.searchText, () {
      super.searchText = value;
    });
  }

  late final _$onInitAsyncAction =
      AsyncAction('_SearchStore.onInit', context: context);

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  late final _$addItemToProjectAsyncAction =
      AsyncAction('_SearchStore.addItemToProject', context: context);

  @override
  Future<void> addItemToProject(Item item) {
    return _$addItemToProjectAsyncAction
        .run(() => super.addItemToProject(item));
  }

  late final _$addWorkerToProjectAsyncAction =
      AsyncAction('_SearchStore.addWorkerToProject', context: context);

  @override
  Future<void> addWorkerToProject(Worker worker) {
    return _$addWorkerToProjectAsyncAction
        .run(() => super.addWorkerToProject(worker));
  }

  late final _$changeFavoriteItemAsyncAction =
      AsyncAction('_SearchStore.changeFavoriteItem', context: context);

  @override
  Future<void> changeFavoriteItem(Item item) {
    return _$changeFavoriteItemAsyncAction
        .run(() => super.changeFavoriteItem(item));
  }

  late final _$changeFavoriteWorkerAsyncAction =
      AsyncAction('_SearchStore.changeFavoriteWorker', context: context);

  @override
  Future<void> changeFavoriteWorker(Worker worker) {
    return _$changeFavoriteWorkerAsyncAction
        .run(() => super.changeFavoriteWorker(worker));
  }

  late final _$_syncAsyncAction =
      AsyncAction('_SearchStore._sync', context: context);

  @override
  Future<void> _sync() {
    return _$_syncAsyncAction.run(() => super._sync());
  }

  late final _$_SearchStoreActionController =
      ActionController(name: '_SearchStore', context: context);

  @override
  void showItemsList() {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.showItemsList');
    try {
      return super.showItemsList();
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showWorkersList() {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.showWorkersList');
    try {
      return super.showWorkersList();
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void search(String value) {
    final _$actionInfo =
        _$_SearchStoreActionController.startAction(name: '_SearchStore.search');
    try {
      return super.search(value);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
workers: ${workers},
items: ${items},
currentProject: ${currentProject},
isLoading: ${isLoading},
showItems: ${showItems},
searchText: ${searchText},
filteredItemsList: ${filteredItemsList},
filteredWorkersList: ${filteredWorkersList}
    ''';
  }
}
