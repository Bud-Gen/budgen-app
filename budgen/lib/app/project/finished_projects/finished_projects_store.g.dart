// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finished_projects_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FinishedProjectsStore on _FinishedProjectsStore, Store {
  final _$projectsAtom = Atom(name: '_FinishedProjectsStore.projects');

  @override
  List<Project> get projects {
    _$projectsAtom.reportRead();
    return super.projects;
  }

  @override
  set projects(List<Project> value) {
    _$projectsAtom.reportWrite(value, super.projects, () {
      super.projects = value;
    });
  }

  final _$currentProjectAtom =
      Atom(name: '_FinishedProjectsStore.currentProject');

  @override
  Project get currentProject {
    _$currentProjectAtom.reportRead();
    return super.currentProject;
  }

  @override
  set currentProject(Project value) {
    _$currentProjectAtom.reportWrite(value, super.currentProject, () {
      super.currentProject = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_FinishedProjectsStore.isLoading');

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

  final _$onInitAsyncAction = AsyncAction('_FinishedProjectsStore.onInit');

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  final _$copyProjectAsyncAction =
      AsyncAction('_FinishedProjectsStore.copyProject');

  @override
  Future<void> copyProject(Project project) {
    return _$copyProjectAsyncAction.run(() => super.copyProject(project));
  }

  final _$deleteProjectAsyncAction =
      AsyncAction('_FinishedProjectsStore.deleteProject');

  @override
  Future<void> deleteProject(Project project) {
    return _$deleteProjectAsyncAction.run(() => super.deleteProject(project));
  }

  final _$_syncAsyncAction = AsyncAction('_FinishedProjectsStore._sync');

  @override
  Future<void> _sync() {
    return _$_syncAsyncAction.run(() => super._sync());
  }

  @override
  String toString() {
    return '''
projects: ${projects},
currentProject: ${currentProject},
isLoading: ${isLoading}
    ''';
  }
}
