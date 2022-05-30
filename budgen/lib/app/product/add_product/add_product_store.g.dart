// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddProductStore on _AddProductStore, Store {
  final _$isItemAtom = Atom(name: '_AddProductStore.isItem');

  @override
  bool get isItem {
    _$isItemAtom.reportRead();
    return super.isItem;
  }

  @override
  set isItem(bool value) {
    _$isItemAtom.reportWrite(value, super.isItem, () {
      super.isItem = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_AddProductStore.isLoading');

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

  final _$nameAtom = Atom(name: '_AddProductStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$codeAtom = Atom(name: '_AddProductStore.code');

  @override
  String get code {
    _$codeAtom.reportRead();
    return super.code;
  }

  @override
  set code(String value) {
    _$codeAtom.reportWrite(value, super.code, () {
      super.code = value;
    });
  }

  final _$priceAtom = Atom(name: '_AddProductStore.price');

  @override
  String get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(String value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  final _$typeAtom = Atom(name: '_AddProductStore.type');

  @override
  String get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(String value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AddProductStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$urlAtom = Atom(name: '_AddProductStore.url');

  @override
  String get url {
    _$urlAtom.reportRead();
    return super.url;
  }

  @override
  set url(String value) {
    _$urlAtom.reportWrite(value, super.url, () {
      super.url = value;
    });
  }

  final _$_AddProductStoreActionController =
      ActionController(name: '_AddProductStore');

  @override
  void setItem() {
    final _$actionInfo = _$_AddProductStoreActionController.startAction(
        name: '_AddProductStore.setItem');
    try {
      return super.setItem();
    } finally {
      _$_AddProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWorker() {
    final _$actionInfo = _$_AddProductStoreActionController.startAction(
        name: '_AddProductStore.setWorker');
    try {
      return super.setWorker();
    } finally {
      _$_AddProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_AddProductStoreActionController.startAction(
        name: '_AddProductStore.clear');
    try {
      return super.clear();
    } finally {
      _$_AddProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onInit() {
    final _$actionInfo = _$_AddProductStoreActionController.startAction(
        name: '_AddProductStore.onInit');
    try {
      return super.onInit();
    } finally {
      _$_AddProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isItem: ${isItem},
isLoading: ${isLoading},
name: ${name},
code: ${code},
price: ${price},
type: ${type},
description: ${description},
url: ${url}
    ''';
  }
}
