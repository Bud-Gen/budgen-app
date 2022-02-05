// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashStore on _SplashStore, Store {
  final _$splashScreenAtom = Atom(name: '_SplashStore.splashScreen');

  @override
  Widget get splashScreen {
    _$splashScreenAtom.reportRead();
    return super.splashScreen;
  }

  @override
  set splashScreen(Widget value) {
    _$splashScreenAtom.reportWrite(value, super.splashScreen, () {
      super.splashScreen = value;
    });
  }

  final _$_SplashStoreActionController = ActionController(name: '_SplashStore');

  @override
  dynamic changeSplash() {
    final _$actionInfo = _$_SplashStoreActionController.startAction(
        name: '_SplashStore.changeSplash');
    try {
      return super.changeSplash();
    } finally {
      _$_SplashStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic initSplash() {
    final _$actionInfo = _$_SplashStoreActionController.startAction(
        name: '_SplashStore.initSplash');
    try {
      return super.initSplash();
    } finally {
      _$_SplashStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
splashScreen: ${splashScreen}
    ''';
  }
}
