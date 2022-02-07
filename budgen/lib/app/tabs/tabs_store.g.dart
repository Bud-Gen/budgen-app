// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TabsStore on _TabsStore, Store {
  final _$indexAtom = Atom(name: '_TabsStore.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$_TabsStoreActionController = ActionController(name: '_TabsStore');

  @override
  void nextPage() {
    final _$actionInfo =
        _$_TabsStoreActionController.startAction(name: '_TabsStore.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$_TabsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void previousPage() {
    final _$actionInfo = _$_TabsStoreActionController.startAction(
        name: '_TabsStore.previousPage');
    try {
      return super.previousPage();
    } finally {
      _$_TabsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIndex(int value) {
    final _$actionInfo =
        _$_TabsStoreActionController.startAction(name: '_TabsStore.setIndex');
    try {
      return super.setIndex(value);
    } finally {
      _$_TabsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index}
    ''';
  }
}
