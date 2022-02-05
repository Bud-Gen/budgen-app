import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class CardPrice extends StatelessWidget {
  final String price;
  const CardPrice(this.price) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Card(
      color: ColorPalette().getColorPrimary(),
      child: Container(
        height: screenSize.height * 0.2,
        width: screenSize.height * 0.2,
        child: Column(
          children: [
            Padding(
              child: Text(
                'Valor Total',
                style: TextStyle(
                  color: ColorPalette().getColorWhite(),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'R\$ $price',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: ColorPalette().getColorWhite(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
