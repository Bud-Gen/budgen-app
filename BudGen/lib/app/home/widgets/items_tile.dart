import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class ItemsTitle extends StatelessWidget {
  final screenSize = ScreenSize();
  ItemsTitle() : super();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    screenSize.initScreenSize(screenHeight, screenWidth);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Text("Itens",
          style: TextStyle(
            fontSize: screenSize.getTextSize18(),
            color: ColorPalette().getColorBlack(),
          )),
    );
  }
}
