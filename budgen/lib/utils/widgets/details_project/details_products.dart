import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DetailsProducts extends StatelessWidget {
  final int itemsQtd;
  final int workersQtd;

  const DetailsProducts({
    @required this.itemsQtd,
    @required this.workersQtd,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height * 0.05;
    final width = screenSize.width * 0.2;

    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Card(
            color: colorPalette.background,
            child: Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  Text(
                    "Itens",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: colorPalette.primaryDarker,
                    ),
                  ),
                  Text(
                    itemsQtd.toString(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: width * 0.10),
          Card(
            color: colorPalette.background,
            child: Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  Text(
                    "Serviços",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: colorPalette.primaryDarker,
                    ),
                  ),
                  Text(
                    workersQtd.toString(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
