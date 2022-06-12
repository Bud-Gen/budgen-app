import 'package:budgen/app/favorite/favorite_store.dart';
import 'package:budgen/app/home/widgets/header/product_buttons.dart';
import 'package:budgen/app/home/widgets/lists/worker_list.dart';
import 'package:budgen/utils/widgets/lists/item_list.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage() : super();

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  FavoriteStore store = FavoriteStore();

  @override
  void initState() {
    store.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorPalette.background,
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        title: Text("Favoritos"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          child: Observer(
            builder: (context) {
              if (store.isLoading)
                return Center(
                  child: CircularProgressIndicator(
                    color: colorPalette.primaryDarker,
                  ),
                );
              else
                return Column(
                  children: [
                    ProductButtons(
                      onPressedShowItem: () => store.showItemsList(),
                      onPressedShowWorker: () => store.showWorkersList(),
                      showItems: store.showItems,
                    ),
                    if (store.showItems)
                      ItemList(
                        items: store.items,
                        hasProject: store.currentProject != null,
                        addToProject: store.addItemToProject,
                        favorite: store.changeFavoriteItem,
                        onChangedValue: (String value) {
                          store.changeProductQuantity(value);
                        },
                      )
                    else
                      WorkerList(
                        workers: store.workers,
                        hasProject: store.currentProject != null,
                        addToProject: store.addWorkerToProject,
                        favorite: store.changeFavoriteWorker,
                        onChangedValue: (String value) {
                          store.changeProductQuantity(value);
                          print(store.productQuantity.toString());
                        },
                      )
                  ],
                );
            },
          ),
        ),
      ),
    );
  }
}
