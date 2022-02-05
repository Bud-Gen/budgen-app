import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondSplash extends StatelessWidget {
  final colorPalette = ColorPalette();

  final String versionNumber;

  SecondSplash({
    this.versionNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            height: 250,
            width: 250,
            child: SvgPicture.asset("images/splash.svg"),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            child: Text(
              "VERSÃO: $versionNumber",
              style: TextStyle(
                color: colorPalette.getColorWhite(),
              ),
            ),
          ),
          Container(height: 25),
        ],
      ),
    );
  }
}
