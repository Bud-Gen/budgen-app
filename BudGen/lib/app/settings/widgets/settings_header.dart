import 'package:BudGen/app/settings/widgets/settings_list.dart';
import 'package:BudGen/app/settings/widgets/settings_title.dart';
import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class SettingsHeader extends StatelessWidget {
  final colorPalette = ColorPalette();
  final screenSize = ScreenSize();

  SettingsHeader() : super();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    screenSize.initScreenSize(height, width);

    return Container(
      color: colorPalette.getColorPrimary(),
      width: double.infinity,
      child: Column(
        children: [
          SettingsTitle(
            color: colorPalette.getColorWhite(),
            fontSize: screenSize.getTextSize20(),
          ),
          SettingsList(),
        ],
      ),
    );
  }
}
