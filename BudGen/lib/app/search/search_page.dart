import 'package:BudGen/app/search/search_store.dart';
import 'package:BudGen/app/search/widgets/item_list_view.dart';
import 'package:BudGen/app/search/widgets/select_buttons.dart';
import 'package:BudGen/app/search/widgets/worker_list_view.dart';
import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:BudGen/utils/widgets/search_page_top_bar/search_page_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SearchPage extends StatelessWidget {
  final searchStore = SearchStore();
  final colorPalette = ColorPalette();
  final screenSize = ScreenSize();

  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => SearchPage(),
      );

  @override
  Widget build(BuildContext context) {
    searchStore.onInit();
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    screenSize.initScreenSize(screenHeight, screenWidth);

    return Scaffold(
      backgroundColor: colorPalette.getColorBackground(),
      body: Column(
        children: [
          SearchPageTopBar(),
          SelectButtons(
            showItems: searchStore.showItems,
            showItemsEnabled: () => searchStore.showItemsEnabled(),
            showWorkersEnabled: () => searchStore.showWorkersEnabled(),
          ), //TODO refatorar isso aqui
          Observer(builder: (context) {
            if (searchStore.showItems) return ItemListView();
            return WorkerListView();
          }),
        ],
      ),
    );
  }
}
