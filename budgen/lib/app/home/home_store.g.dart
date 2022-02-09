// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$currentProjectAtom = Atom(name: '_HomeStore.currentProject');

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

  final _$existsProjectAtom = Atom(name: '_HomeStore.existsProject');

  @override
  bool get existsProject {
    _$existsProjectAtom.reportRead();
    return super.existsProject;
  }

  @override
  set existsProject(bool value) {
    _$existsProjectAtom.reportWrite(value, super.existsProject, () {
      super.existsProject = value;
    });
  }

  final _$projectNameAtom = Atom(name: '_HomeStore.projectName');

  @override
  String get projectName {
    _$projectNameAtom.reportRead();
    return super.projectName;
  }

  @override
  set projectName(String value) {
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
  Future<void> finishProject() {
    return _$finishProjectAsyncAction.run(() => super.finishProject());
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

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
  String toString() {
    return '''
currentProject: ${currentProject},
existsProject: ${existsProject},
projectName: ${projectName},
projectEmail: ${projectEmail},
isLoading: ${isLoading}
    ''';
  }
}
