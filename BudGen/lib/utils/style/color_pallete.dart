import 'package:flutter/material.dart';

class ColorPalette {
  int colorTheme = 0;

  List<Map<String, Color>> colors = [
    {
      "colorPrimary": const Color(0xFF57ADCF),
      "colorPrimaryLighter": const Color(0xFF63C8F0),
      "colorPrimaryDarker": const Color(0xFF33697E),
      "colorBackground": const Color(0xFFEFEFEF),
      "colorDisabled": const Color(0xFFCCCCCC),
      "colorWhite": const Color(0xFFFFFFFF),
      "colorBlack": const Color(0xFF111111),
    },
  ];

  Color getColorPrimary() {
    return colors[colorTheme]["colorPrimary"];
  }

  Color getColorPrimaryLighter() {
    return colors[colorTheme]["colorPrimaryLighter"];
  }

  Color getColorPrimaryDarker() {
    return colors[colorTheme]["colorPrimaryDarker"];
  }

  Color getColorBackground() {
    return colors[colorTheme]["colorBackground"];
  }

  Color getColorDisabled() {
    return colors[colorTheme]["colorDisabled"];
  }

  Color getColorWhite() {
    return colors[colorTheme]["colorWhite"];
  }

  Color getColorBlack() {
    return colors[colorTheme]["colorBlack"];
  }
}
