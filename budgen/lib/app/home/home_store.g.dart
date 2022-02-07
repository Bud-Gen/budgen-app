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

  final _$onInitAsyncAction = AsyncAction('_HomeStore.onInit');

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  final _$newProjectAsyncAction = AsyncAction('_HomeStore.newProject');

  @override
  Future<void> newProject() {
    return _$newProjectAsyncAction.run(() => super.newProject());
  }

  @override
  String toString() {
    return '''
countItemsList: ${countItemsList}
    ''';
  }
}
