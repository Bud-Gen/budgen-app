import 'package:budgen/app/favorite/favorite_page.dart';
import 'package:budgen/app/home/home_page.dart';
import 'package:budgen/app/search/search_page.dart';
import 'package:budgen/app/settings/settings_page.dart';
import 'package:budgen/app/tabs/tabs_store.dart';
import 'package:budgen/app/tabs/widgets/bottom_bar.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TabsPage extends StatelessWidget {
  List screens = [
    HomePage(),
    SearchPage(),
    FavoritePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final store = TabsStore();

    return Scaffold(
      body: Column(
        children: [
          Observer(
            builder: (_) => Expanded(
              child: screens[store.index],
            ),
          )
        ],
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BottomBar(
          index: store.index,
          setIndex: (int value) => store.setIndex(value),
        ),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
