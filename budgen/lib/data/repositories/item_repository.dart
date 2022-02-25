import 'dart:core';
import 'package:budgen/data/local_data/local_database.dart';
import 'package:budgen/domain/core/database_constants.dart';
import 'package:budgen/domain/core/queries/item_queries.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:sqflite/sqflite.dart';

class ItemRepository {
  Future<bool> insertItem(Item item) async {
    Database? _database = await LocalDatabase.instance.database;
    try {
      await _database!.insert(ITEM, item.toMap());
      return true;
    } catch (error) {
      return false;
    }
  }

  Future<List<Item>> getAllItems() async {
    List<Item> items = [];
    Database? _database = await LocalDatabase.instance.database;
    final itemsData = await _database!.rawQuery(GET_ALL_ITEMS);

    itemsData.forEach((item) {
      items.add(Item.fromMap(item));
    });

    return items;
  }

  Future<List<Item>> getFavoriteItems() async {
    List<Item> items = [];
    Database? _database = await LocalDatabase.instance.database;
    final itemsData = await _database!.rawQuery(GET_FAVORITE_ITEMS);

    itemsData.forEach((item) {
      items.add(Item.fromMap(item));
    });

    return items;
  }

  Future<Item> getItemById(String id) async {
    Database? _database = await LocalDatabase.instance.database;

    final itemData = await _database!
        .query(ITEM, where: 'id = ?', whereArgs: [id], limit: 1);

    return Item.fromMap(itemData.first);
  }

  Future<bool> changeFavoriteItem(Item item) async {
    bool result = false;
    Database? _database = await LocalDatabase.instance.database;

    final Item favoriteItem = Item(
      id: item.id!,
      name: item.name!,
      code: item.code!,
      imageUrl: item.imageUrl!,
      description: item.description!,
      path: item.path!,
      price: item.price!,
      createdAt: item.createdAt!,
      createdBy: item.createdBy!,
      deletedBy: item.deletedBy!,
      isFavorite: !item.isFavorite!,
    );

    await _database!.update(ITEM, favoriteItem.toMap(),
        where: 'id = ?',
        whereArgs: [item.id]).whenComplete(() => result = true);

    return result;
  }

  Future<bool> updateItem(Item item) async {
    bool result = false;
    Database? _database = await LocalDatabase.instance.database;

    final itemData = await _database!
        .query(ITEM, where: 'id = ?', whereArgs: [item.id], limit: 1);

    Item itemFromDb = Item.fromMap(itemData.first);

    if (!(item.equals(itemFromDb))) {
      await _database.update(ITEM, item.toMap(),
          where: 'id = ?',
          whereArgs: [item.id]).whenComplete(() => result = true);

      return result;
    }

    return result;
  }
}
