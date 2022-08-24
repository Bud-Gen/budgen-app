// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_project_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailsProjectStore on _DetailsProjectStore, Store {
  late final _$projectAtom =
      Atom(name: '_DetailsProjectStore.project', context: context);

  @override
  Project? get project {
    _$projectAtom.reportRead();
    return super.project;
  }

  @override
  set project(Project? value) {
    _$projectAtom.reportWrite(value, super.project, () {
      super.project = value;
    });
  }

  late final _$currentProjectAtom =
      Atom(name: '_DetailsProjectStore.currentProject', context: context);

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

  late final _$showItemsAtom =
      Atom(name: '_DetailsProjectStore.showItems', context: context);

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
      Atom(name: '_DetailsProjectStore.isLoading', context: context);

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

  late final _$itemsAtom =
      Atom(name: '_DetailsProjectStore.items', context: context);

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

  late final _$workersAtom =
      Atom(name: '_DetailsProjectStore.workers', context: context);

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

  late final _$onInitAsyncAction =
      AsyncAction('_DetailsProjectStore.onInit', context: context);

  @override
  Future<void> onInit(Project newProject) {
    return _$onInitAsyncAction.run(() => super.onInit(newProject));
  }

  late final _$copyProjectAsyncAction =
      AsyncAction('_DetailsProjectStore.copyProject', context: context);

  @override
  Future<void> copyProject(Project project) {
    return _$copyProjectAsyncAction.run(() => super.copyProject(project));
  }

  late final _$deleteProjectAsyncAction =
      AsyncAction('_DetailsProjectStore.deleteProject', context: context);

  @override
  Future<void> deleteProject() {
    return _$deleteProjectAsyncAction.run(() => super.deleteProject());
  }

  late final _$_DetailsProjectStoreActionController =
      ActionController(name: '_DetailsProjectStore', context: context);

  @override
  void viewItems(bool showItem) {
    final _$actionInfo = _$_DetailsProjectStoreActionController.startAction(
        name: '_DetailsProjectStore.viewItems');
    try {
      return super.viewItems(showItem);
    } finally {
      _$_DetailsProjectStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
project: ${project},
currentProject: ${currentProject},
showItems: ${showItems},
isLoading: ${isLoading},
items: ${items},
workers: ${workers}
    ''';
  }
}
