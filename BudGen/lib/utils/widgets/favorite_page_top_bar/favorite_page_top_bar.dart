import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class FavoritePageTopBar extends StatelessWidget {
  final ScreenSize screenSize = ScreenSize();
  final ColorPalette colorPalette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.getHeightTopBar() / 2,
      color: colorPalette.getColorPrimary(),
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "FAVORITOS",
                  style: TextStyle(
                    fontSize: screenSize.getTextSize20(),
                    color: colorPalette.getColorWhite(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
