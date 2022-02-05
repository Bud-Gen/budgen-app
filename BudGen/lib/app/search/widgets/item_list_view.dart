import 'package:BudGen/domain/entities/item.dart';
import 'package:BudGen/utils/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ItemListView extends StatelessWidget {
  final Map<String, int> itemsCount;
  final Map<String, int> cacheItems;
  final List<Item> items;
  final Function favoriteItem;
  final Function increaseItemCount;
  final Function decreaseItemCount;
  final Function addItem;

  const ItemListView({
    this.itemsCount,
    this.items,
    this.cacheItems,
    this.favoriteItem,
    this.increaseItemCount,
    this.decreaseItemCount,
    this.addItem,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Observer(
          builder: (context) {
            return ListView.builder(
              itemCount: (items ?? []).length,
              itemBuilder: (_, index) {
                return ProductTile(
                  isItem: true,
                  elementID: "mudar",
                  favoriteFunction: () {
                    favoriteItem(items[index]);
                  },
                  showCounter: true,
                  increaseCounterFunction: () => increaseItemCount(),
                  decreaseCounterFunction: () => decreaseItemCount(),
                  icon: Icons.build,
                  product: items[index],
                  addFunction: () => addItem(),
                  isFavoritePage: false,
                  itemsCount: itemsCount,
                  price: "hajha",
                  showFavorite: true,
                  workersCount: null,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
