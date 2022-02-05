import 'package:BudGen/app/tabs/tabs_store.dart';
import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:BudGen/utils/widgets/bottom_bar/bottom_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BottomBar extends StatelessWidget {
  final TabsStore tabStore; //TODO: remover isso aqui e fazer uma function
  final ScreenSize screenSize;
  final ColorPalette colorPalette;

  BottomBar({
    this.tabStore,
    this.screenSize,
    this.colorPalette,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        height: screenSize.getHeightBottomBar(),
        color: colorPalette.getColorWhite(),
        child: Row(
          children: [
            BottomBarButton(
              icon: Icons.home,
              color: (tabStore.index == 0)
                  ? colorPalette.getColorPrimary()
                  : colorPalette.getColorDisabled(),
              onTap: () {
                tabStore.setIndex(0);
              },
            ),
            BottomBarButton(
              icon: Icons.search,
              color: (tabStore.index == 1)
                  ? colorPalette.getColorPrimary()
                  : colorPalette.getColorDisabled(),
              onTap: () {
                tabStore.setIndex(1);
              },
            ),
            BottomBarButton(
              icon: Icons.favorite,
              color: (tabStore.index == 2)
                  ? colorPalette.getColorPrimary()
                  : colorPalette.getColorDisabled(),
              onTap: () {
                tabStore.setIndex(2);
              },
            ),
            BottomBarButton(
              icon: Icons.settings,
              color: (tabStore.index == 3)
                  ? colorPalette.getColorPrimary()
                  : colorPalette.getColorDisabled(),
              onTap: () {
                tabStore.setIndex(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
