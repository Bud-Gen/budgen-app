// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SplashStore on _SplashStore, Store {
  late final _$versionNumberAtom =
      Atom(name: '_SplashStore.versionNumber', context: context);

  @override
  String get versionNumber {
    _$versionNumberAtom.reportRead();
    return super.versionNumber;
  }

  @override
  set versionNumber(String value) {
    _$versionNumberAtom.reportWrite(value, super.versionNumber, () {
      super.versionNumber = value;
    });
  }

  late final _$initSplashAsyncAction =
      AsyncAction('_SplashStore.initSplash', context: context);

  @override
  Future initSplash() {
    return _$initSplashAsyncAction.run(() => super.initSplash());
  }

  late final _$_SplashStoreActionController =
      ActionController(name: '_SplashStore', context: context);

  @override
  String getVersion() {
    final _$actionInfo = _$_SplashStoreActionController.startAction(
        name: '_SplashStore.getVersion');
    try {
      return super.getVersion();
    } finally {
      _$_SplashStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
versionNumber: ${versionNumber}
    ''';
  }
}
