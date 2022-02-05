import 'package:mobx/mobx.dart';

part 'home_store_item_tile.g.dart';

class HomeStoreItemTile = _HomeStoreItemTile with _$HomeStoreItemTile;

abstract class _HomeStoreItemTile with Store {
  @observable
  int quantity = 0;

  @action
  double totalPrice(double price) {
    double total = (price * quantity);
    return total.floorToDouble();
  }

  @action
  void increaseQuantity() {
    quantity += 1;
  }

  @action
  void decreaseQuantity() {
    if (quantity > 0) quantity -= 1;
  }
}
