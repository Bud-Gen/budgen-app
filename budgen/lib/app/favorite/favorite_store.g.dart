// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoriteStore on _FavoriteStore, Store {
  final _$workersAtom = Atom(name: '_FavoriteStore.workers');

  @override
  List<Worker> get workers {
    _$workersAtom.reportRead();
    return super.workers;
  }

  @override
  set workers(List<Worker> value) {
    _$workersAtom.reportWrite(value, super.workers, () {
      super.workers = value;
    });
  }

  final _$itemsAtom = Atom(name: '_FavoriteStore.items');

  @override
  List<Item> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<Item> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_FavoriteStore.isLoading');

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

  final _$_setWorkersAsyncAction = AsyncAction('_FavoriteStore._setWorkers');

  @override
  Future<void> _setWorkers() {
    return _$_setWorkersAsyncAction.run(() => super._setWorkers());
  }

  final _$_setItemsAsyncAction = AsyncAction('_FavoriteStore._setItems');

  @override
  Future<void> _setItems() {
    return _$_setItemsAsyncAction.run(() => super._setItems());
  }

  @override
  String toString() {
    return '''
workers: ${workers},
items: ${items},
isLoading: ${isLoading}
    ''';
  }
}
