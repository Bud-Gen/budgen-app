import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DetailsTitleCard extends StatelessWidget {
  final String title;
  const DetailsTitleCard({this.title}) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ColorPalette colorPalette = ColorPalette();

    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.01,
        left: screenSize.width * 0.03,
        bottom: screenSize.height * 0.01,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: colorPalette.primaryDarker,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
