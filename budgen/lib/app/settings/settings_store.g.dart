// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingsStore on _SettingsStore, Store {
  late final _$versionNumberAtom =
      Atom(name: '_SettingsStore.versionNumber', context: context);

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

  late final _$onInitAsyncAction =
      AsyncAction('_SettingsStore.onInit', context: context);

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  late final _$onLogoutAsyncAction =
      AsyncAction('_SettingsStore.onLogout', context: context);

  @override
  Future<void> onLogout() {
    return _$onLogoutAsyncAction.run(() => super.onLogout());
  }

  @override
  String toString() {
    return '''
versionNumber: ${versionNumber}
    ''';
  }
}
