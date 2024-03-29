// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_drawer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NavigationDrawerStore on _NavigationDrawerStore, Store {
  late final _$userAtom =
      Atom(name: '_NavigationDrawerStore.user', context: context);

  @override
  UserCredentials? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserCredentials? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$showItemsAtom =
      Atom(name: '_NavigationDrawerStore.showItems', context: context);

  @override
  bool get showItems {
    _$showItemsAtom.reportRead();
    return super.showItems;
  }

  @override
  set showItems(bool value) {
    _$showItemsAtom.reportWrite(value, super.showItems, () {
      super.showItems = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_NavigationDrawerStore.isLoading', context: context);

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

  late final _$onLogoutAsyncAction =
      AsyncAction('_NavigationDrawerStore.onLogout', context: context);

  @override
  Future<void> onLogout() {
    return _$onLogoutAsyncAction.run(() => super.onLogout());
  }

  late final _$_syncAsyncAction =
      AsyncAction('_NavigationDrawerStore._sync', context: context);

  @override
  Future<void> _sync() {
    return _$_syncAsyncAction.run(() => super._sync());
  }

  late final _$_NavigationDrawerStoreActionController =
      ActionController(name: '_NavigationDrawerStore', context: context);

  @override
  void navigateToFinishProjects() {
    final _$actionInfo = _$_NavigationDrawerStoreActionController.startAction(
        name: '_NavigationDrawerStore.navigateToFinishProjects');
    try {
      return super.navigateToFinishProjects();
    } finally {
      _$_NavigationDrawerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void navigateToImportSpreadsheetPage() {
    final _$actionInfo = _$_NavigationDrawerStoreActionController.startAction(
        name: '_NavigationDrawerStore.navigateToImportSpreadsheetPage');
    try {
      return super.navigateToImportSpreadsheetPage();
    } finally {
      _$_NavigationDrawerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void navigateToAboutApp() {
    final _$actionInfo = _$_NavigationDrawerStoreActionController.startAction(
        name: '_NavigationDrawerStore.navigateToAboutApp');
    try {
      return super.navigateToAboutApp();
    } finally {
      _$_NavigationDrawerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
showItems: ${showItems},
isLoading: ${isLoading}
    ''';
  }
}
