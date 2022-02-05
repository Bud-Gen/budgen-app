import 'package:BudGen/domain/entities/product.dart';
import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:BudGen/utils/widgets/favorite_item_button.dart';
import 'package:BudGen/utils/widgets/spin_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProductTile extends StatelessWidget {
  final ScreenSize screenSize = ScreenSize();
  final ColorPalette colorPalette = ColorPalette();
  final bool isFavoritePage;
  final Map<String, int> workersCount;
  final Map<String, int> itemsCount;
  final Product product;
  final IconData icon;
  final Function favoriteFunction;
  final Function addFunction;
  final bool showFavorite;
  final bool showCounter;
  final String price;
  final String elementID;
  final Function increaseCounterFunction;
  final Function decreaseCounterFunction;
  final bool isItem;

  ProductTile({
    @required this.icon,
    @required this.product,
    @required this.favoriteFunction,
    @required this.showFavorite,
    @required this.showCounter,
    @required this.price,
    @required this.elementID,
    @required this.addFunction,
    @required this.increaseCounterFunction,
    @required this.decreaseCounterFunction,
    @required this.isItem,
    @required this.isFavoritePage,
    @required this.itemsCount,
    @required this.workersCount,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(icon),
                    Text(product.name),
                    showFavorite ?? true
                        ? FavoriteItemButton(
                            onPressed: () {
                              favoriteFunction();
                            },
                            isFavorite:
                                (product != null) ? product.isFavorite : false,
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
            Divider(height: 6),
            Container(
              height: 40,
              child: Row(
                children: [
                  Container(
                    width: 125,
                    child: (showCounter ?? true)
                        ? Center(
                            child: Observer(
                              builder: (context) {
                                return SpinBox(
                                  value: (isFavoritePage)
                                      ? (isItem
                                          ? itemsCount[elementID]
                                          : workersCount[elementID])
                                      : (isItem
                                          ? itemsCount[elementID]
                                          : workersCount[elementID]),
                                  addFunction: () =>
                                      increaseCounterFunction(elementID),
                                  removeFunction: () =>
                                      decreaseCounterFunction(elementID),
                                );
                              },
                            ),
                          )
                        : Container(),
                  ),
                  Expanded(
                    child: Container(
                      child: (price != null)
                          ? Center(
                              child: Text('R\$$price'),
                            )
                          : Container(),
                    ),
                  ),
                  Container(
                    width: 125,
                    child: (addFunction != null)
                        ? Center(
                            child: TextButton(
                              child: Text('Adicionar'),
                              onPressed: () {
                                addFunction(elementID);
                              },
                            ),
                          )
                        : Container(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
