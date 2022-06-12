import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/usecases/item/insert_item.dart';
import 'package:budgen/domain/usecases/worker/insert_worker.dart';
import 'package:mobx/mobx.dart';

part 'add_product_store.g.dart';

class AddProductStore = _AddProductStore with _$AddProductStore;

abstract class _AddProductStore with Store {
  InsertItem _insertItem = InsertItem();
  InsertWorker _insertWorker = InsertWorker();

  @observable
  bool isItem = true;

  @observable
  bool isLoading = false;

  @observable
  String name = '';

  @observable
  String code = '';

  @observable
  String price = '';

  @observable
  String type = '';

  @observable
  String description = '';

  @observable
  String url = '';

  @action
  void setItem() {
    isItem = true;
  }

  @action
  void setWorker() {
    isItem = false;
  }

  void changeName(String value) {
    name = value;
  }

  void changeCode(String value) {
    code = value;
  }

  void changePrice(String value) {
    price = value;
  }

  void changeType(String value) {
    type = value;
  }

  void changeUrl(String value) {
    url = value;
  }

  void changeDescription(String value) {
    description = value;
  }

  Future<bool> addProduct() {
    isLoading = true;
    if (isItem) {
      return _addItem();
    } else {
      return _addWorker();
    }
  }

  Future<bool> _addItem() async {
    return await _insertItem.unique(
      name: name,
      code: code,
      price: double.parse(price),
      description: description,
      type: type,
      url: url,
    );
  }

  Future<bool> _addWorker() async {
    return await _insertWorker.unique(
      name: name,
      code: code,
      price: double.parse(price),
      type: type,
      description: description,
      url: url,
    );
  }

  bool isValid() {
    return name != '' && code != '' && price != '';
  }

  @action
  void clear() {
    isLoading = false;
    isItem = true;
    name = '';
    code = '';
    price = '';
    type = '';
    description = '';
    url = '';
  }

  @action
  void onInit() {}
}
