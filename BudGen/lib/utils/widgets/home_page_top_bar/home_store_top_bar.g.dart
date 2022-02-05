// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store_top_bar.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStoreTopBar on _HomeStoreTopBar, Store {
  final _$projectNameAtom = Atom(name: '_HomeStoreTopBar.projectName');

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

  final _$isTypingAtom = Atom(name: '_HomeStoreTopBar.isTyping');

  @override
  bool get isTyping {
    _$isTypingAtom.reportRead();
    return super.isTyping;
  }

  @override
  set isTyping(bool value) {
    _$isTypingAtom.reportWrite(value, super.isTyping, () {
      super.isTyping = value;
    });
  }

  final _$_HomeStoreTopBarActionController =
      ActionController(name: '_HomeStoreTopBar');

  @override
  void setIsTyping() {
    final _$actionInfo = _$_HomeStoreTopBarActionController.startAction(
        name: '_HomeStoreTopBar.setIsTyping');
    try {
      return super.setIsTyping();
    } finally {
      _$_HomeStoreTopBarActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProjectName(String project) {
    final _$actionInfo = _$_HomeStoreTopBarActionController.startAction(
        name: '_HomeStoreTopBar.setProjectName');
    try {
      return super.setProjectName(project);
    } finally {
      _$_HomeStoreTopBarActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
projectName: ${projectName},
isTyping: ${isTyping}
    ''';
  }
}
