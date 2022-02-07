// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$countItemsListAtom = Atom(name: '_HomeStore.countItemsList');

  @override
  int get countItemsList {
    _$countItemsListAtom.reportRead();
    return super.countItemsList;
  }

  @override
  set countItemsList(int value) {
    _$countItemsListAtom.reportWrite(value, super.countItemsList, () {
      super.countItemsList = value;
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

  final _$newProjectAsyncAction = AsyncAction('_HomeStore.newProject');

  @override
  Future<void> newProject() {
    return _$newProjectAsyncAction.run(() => super.newProject());
  }

  @override
  String toString() {
    return '''
countItemsList: ${countItemsList},
isLoading: ${isLoading}
    ''';
  }
}
