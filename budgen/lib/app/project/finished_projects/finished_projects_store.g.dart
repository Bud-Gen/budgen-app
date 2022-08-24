// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finished_projects_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FinishedProjectsStore on _FinishedProjectsStore, Store {
  late final _$projectsAtom =
      Atom(name: '_FinishedProjectsStore.projects', context: context);

  @override
  List<Project>? get projects {
    _$projectsAtom.reportRead();
    return super.projects;
  }

  @override
  set projects(List<Project>? value) {
    _$projectsAtom.reportWrite(value, super.projects, () {
      super.projects = value;
    });
  }

  late final _$currentProjectAtom =
      Atom(name: '_FinishedProjectsStore.currentProject', context: context);

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
      Atom(name: '_FinishedProjectsStore.isLoading', context: context);

  @override
  bool? get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool? value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$onInitAsyncAction =
      AsyncAction('_FinishedProjectsStore.onInit', context: context);

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  late final _$copyProjectAsyncAction =
      AsyncAction('_FinishedProjectsStore.copyProject', context: context);

  @override
  Future<void> copyProject(Project project) {
    return _$copyProjectAsyncAction.run(() => super.copyProject(project));
  }

  late final _$deleteProjectAsyncAction =
      AsyncAction('_FinishedProjectsStore.deleteProject', context: context);

  @override
  Future<void> deleteProject(Project project) {
    return _$deleteProjectAsyncAction.run(() => super.deleteProject(project));
  }

  late final _$_syncAsyncAction =
      AsyncAction('_FinishedProjectsStore._sync', context: context);

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
