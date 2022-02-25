// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_project_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailsProjectStore on _DetailsProjectStore, Store {
  final _$projectAtom = Atom(name: '_DetailsProjectStore.project');

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

  final _$currentProjectAtom =
      Atom(name: '_DetailsProjectStore.currentProject');

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

  final _$isLoadingAtom = Atom(name: '_DetailsProjectStore.isLoading');

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

  final _$itemsAtom = Atom(name: '_DetailsProjectStore.items');

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

  final _$workersAtom = Atom(name: '_DetailsProjectStore.workers');

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

  final _$onInitAsyncAction = AsyncAction('_DetailsProjectStore.onInit');

  @override
  Future<void> onInit(Project newProject) {
    return _$onInitAsyncAction.run(() => super.onInit(newProject));
  }

  final _$copyProjectAsyncAction =
      AsyncAction('_DetailsProjectStore.copyProject');

  @override
  Future<void> copyProject(Project project) {
    return _$copyProjectAsyncAction.run(() => super.copyProject(project));
  }

  final _$deleteProjectAsyncAction =
      AsyncAction('_DetailsProjectStore.deleteProject');

  @override
  Future<void> deleteProject() {
    return _$deleteProjectAsyncAction.run(() => super.deleteProject());
  }

  @override
  String toString() {
    return '''
project: ${project},
currentProject: ${currentProject},
isLoading: ${isLoading},
items: ${items},
workers: ${workers}
    ''';
  }
}
