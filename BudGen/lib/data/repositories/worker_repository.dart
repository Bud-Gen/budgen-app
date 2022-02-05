import 'dart:core';
import 'package:BudGen/data/local_data/local_database.dart';
import 'package:BudGen/domain/core/database_constants.dart';
import 'package:BudGen/domain/core/queries/worker_queries.dart';
import 'package:BudGen/domain/entities/worker.dart';
import 'package:sqflite/sqflite.dart';

class WorkerRepository {
  Future<bool> insertWorker(Worker worker) async {
    Database _database = await LocalDatabase.instance.database;

    try {
      await _database.insert(WORKER, worker.toMap());
      return true;
    } catch (error) {
      return false;
    }
  }

  Future<List<Worker>> getAllWorkers() async {
    List<Worker> workers = [];

    Database _database = await LocalDatabase.instance.database;
    final workersData = await _database.rawQuery(GET_ALL_WORKERS);

    workersData.forEach((worker) {
      workers.add(Worker.fromMap(worker));
    });

    return workers;
  }

  Future<Worker> getWorkerById(String id) async {
    Database _database = await LocalDatabase.instance.database;

    final workerData = await _database.query(WORKER,
        where: 'id = ?', whereArgs: [id], limit: 1);
    if (workerData != null) {
      return Worker.fromMap(workerData.first);
    }

    return null;
  }

  Future<bool> changeFavoriteWorker(Worker worker) async {
    Database _database = await LocalDatabase.instance.database;

    final Worker favoriteWorker = Worker(
      id: worker.id,
      name: worker.name,
      code: worker.code,
      description: worker.description,
      imageUrl: worker.imageUrl,
      price: worker.price,
      phone: worker.phone,
      type: worker.type,
      address: worker.address,
      path: worker.path,
      createdAt: worker.createdAt,
      createdBy: worker.createdBy,
      deletedBy: worker.deletedBy,
      isFavorite: worker.isFavorite != null ? !worker.isFavorite : false,
    );

    try {
      await _database.update(WORKER, favoriteWorker.toMap(),
          where: 'id = ?', whereArgs: [worker.id]);
      return true;
    } catch (error) {
      return false;
    }
  }

  Future<bool> update(Worker worker) async {
    bool result = false;
    Database _database = await LocalDatabase.instance.database;

    final workerData = await _database.query(WORKER,
        where: 'id = ?', whereArgs: [worker.id], limit: 1);

    Worker workerFromDb = Worker.fromMap(workerData.first);

    if (workerFromDb != null && !(worker.equals(workerFromDb))) {
      await _database.update(WORKER, worker.toMap(),
          where: 'id = ?',
          whereArgs: [worker.id]).whenComplete(() => result = true);

      return result;
    }

    return result;
  }
}
