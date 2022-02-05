import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class CardTotalPrice extends StatelessWidget {
  final String totalPrice;
  const CardTotalPrice({
    @required this.totalPrice,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        color: ColorPalette().getColorPrimaryDarker(),
        child: Container(
            height: screenSize.height * 0.12,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Preço final do Projeto',
                    style: TextStyle(
                      color: ColorPalette().getColorWhite(),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'R\$ $totalPrice',
                  style: TextStyle(
                    color: ColorPalette().getColorWhite(),
                    fontSize: 20,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
