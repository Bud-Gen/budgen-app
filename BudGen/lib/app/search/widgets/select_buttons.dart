import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SelectButtons extends StatelessWidget {
  final bool showItems;
  final Function showItemsEnabled;
  final Function showWorkersEnabled;
  final colorPalette = ColorPalette();
  final screenSize = ScreenSize();

  SelectButtons({
    @required this.showItems,
    @required this.showItemsEnabled,
    @required this.showWorkersEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.getHeightTopBar() * 0.8,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (context) {
                return FlatButton(
                  color: (showItems)
                      ? colorPalette.getColorPrimary()
                      : colorPalette.getColorPrimaryDarker(),
                  child: Text(
                    "Produtos",
                    style: TextStyle(
                      color: colorPalette.getColorWhite(),
                    ),
                  ),
                  onPressed: () => showItemsEnabled(),
                );
              },
            ),
            SizedBox(width: 50),
            Observer(builder: (context) {
              return FlatButton(
                color: (!showItems)
                    ? colorPalette.getColorPrimary()
                    : colorPalette.getColorPrimaryDarker(),
                child: Text(
                  "Serviços",
                  style: TextStyle(
                    color: colorPalette.getColorWhite(),
                  ),
                ),
                onPressed: () => showWorkersEnabled(),
              );
            }),
          ],
        ),
      ),
    );
  }
}
