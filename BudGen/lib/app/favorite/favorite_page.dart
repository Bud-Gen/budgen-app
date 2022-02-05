import 'package:BudGen/app/search/widgets/item_list_view.dart';
import 'package:BudGen/app/search/widgets/select_buttons.dart';
import 'package:BudGen/app/search/widgets/worker_list_view.dart';
import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:BudGen/utils/widgets/favorite_page_top_bar/favorite_page_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'favorite_store.dart';

class FavoritePage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => FavoritePage(),
      );

  final favoriteStore = FavoriteStore();
  final colorPalette = ColorPalette();
  final screenSize = ScreenSize();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    screenSize.initScreenSize(screenHeight, screenWidth);

    favoriteStore.onInit();

    return Scaffold(
      backgroundColor: colorPalette.getColorBackground(),
      body: Column(
        children: [
          FavoritePageTopBar(),
          SelectButtons(
            showItems: favoriteStore.showItems,
            showItemsEnabled: () => favoriteStore.selectShowItems(),
            showWorkersEnabled: () => favoriteStore.selectShowWorkers(),
          ),
          Observer(builder: (context) {
            if (favoriteStore.showItems) return ItemListView();
            return WorkerListView();
          }),
        ],
      ),
    );
  }
}
