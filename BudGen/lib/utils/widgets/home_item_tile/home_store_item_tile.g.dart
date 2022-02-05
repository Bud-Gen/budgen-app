// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store_item_tile.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStoreItemTile on _HomeStoreItemTile, Store {
  final _$quantityAtom = Atom(name: '_HomeStoreItemTile.quantity');

  @override
  int get quantity {
    _$quantityAtom.reportRead();
    return super.quantity;
  }

  @override
  set quantity(int value) {
    _$quantityAtom.reportWrite(value, super.quantity, () {
      super.quantity = value;
    });
  }

  final _$_HomeStoreItemTileActionController =
      ActionController(name: '_HomeStoreItemTile');

  @override
  double totalPrice(double price) {
    final _$actionInfo = _$_HomeStoreItemTileActionController.startAction(
        name: '_HomeStoreItemTile.totalPrice');
    try {
      return super.totalPrice(price);
    } finally {
      _$_HomeStoreItemTileActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseQuantity() {
    final _$actionInfo = _$_HomeStoreItemTileActionController.startAction(
        name: '_HomeStoreItemTile.increaseQuantity');
    try {
      return super.increaseQuantity();
    } finally {
      _$_HomeStoreItemTileActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseQuantity() {
    final _$actionInfo = _$_HomeStoreItemTileActionController.startAction(
        name: '_HomeStoreItemTile.decreaseQuantity');
    try {
      return super.decreaseQuantity();
    } finally {
      _$_HomeStoreItemTileActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quantity: ${quantity}
    ''';
  }
}
