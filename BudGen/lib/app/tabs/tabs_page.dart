import 'package:BudGen/app/favorite/favorite_page.dart';
import 'package:BudGen/app/home/home_page.dart';
import 'package:BudGen/app/search/search_page.dart';
import 'package:BudGen/app/settings/settings_page.dart';
import 'package:BudGen/app/tabs/tabs_store.dart';
import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:BudGen/utils/widgets/bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  final tabStore = TabsStore();
  final screenSize = ScreenSize();
  final colorPalette = ColorPalette();

  List screens = [
    HomePage(),
    SearchPage(),
    FavoritePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    screenSize.initScreenSize(screenHeight, screenWidth);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Observer(
              builder: (_) => Expanded(
                child: screens[tabStore.index],
              ),
            ),
            BottomBar(
              colorPalette: colorPalette,
              screenSize: screenSize,
              tabStore: tabStore,
            ),
          ],
        ),
      ),
    );
  }
}
