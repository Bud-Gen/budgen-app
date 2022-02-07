import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/item/get_items.dart';
import 'package:budgen/domain/usecases/worker/get_workers.dart';
import 'package:mobx/mobx.dart';
part 'favorite_store.g.dart';

class FavoriteStore = _FavoriteStore with _$FavoriteStore;

abstract class _FavoriteStore with Store {
  GetWorkers _getWorkers = GetWorkers();

  GetItems _getItems = GetItems();

  @observable
  List<Worker> workers;

  @observable
  List<Item> items;

  @observable
  bool isLoading = false;

  Future<void> onInit() async {
    isLoading = true;
    await _setWorkers();
    await _setItems();

    isLoading = false;
  }

  @action
  Future<void> _setWorkers() async {
    workers = await _getWorkers.all();
  }

  @action
  Future<void> _setItems() async {
    items = await _getItems.all();
  }
}
