import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DetailsProjectHeader extends StatelessWidget {
  const DetailsProjectHeader() : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        color: ColorPalette().getColorPrimaryDarker(),
        child: Container(
          height: screenSize.height * 0.12,
          child: Center(
            child: Text(
              'Detalhes do Projeto',
              style: TextStyle(
                color: ColorPalette().getColorWhite(),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
