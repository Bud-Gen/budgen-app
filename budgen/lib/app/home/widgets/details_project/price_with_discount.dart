import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class PriceWithDiscount extends StatelessWidget {
  final double price;
  final double discount;

  const PriceWithDiscount({
    this.price,
    this.discount,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    ColorPalette colorPalette = ColorPalette();

    final String totalPrice = price.toStringAsFixed(2).toString();
    final String discountPrice =
        (price - discount).toStringAsFixed(2).toString();

    return Padding(
      padding: EdgeInsets.only(top: screenSize.height * 0.005),
      child: Column(
        children: [
          Card(
            color: colorPalette.background,
            child: Container(
              height: screenSize.height * 0.06,
              width: screenSize.width * 0.40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Preço Total",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: colorPalette.primaryDarker,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.005,
                  ),
                  Text(
                    totalPrice,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: colorPalette.background,
            child: Container(
              height: screenSize.height * 0.06,
              width: screenSize.width * 0.40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Preço com desconto",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: colorPalette.primaryDarker,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.005),
                  Text(
                    discountPrice,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
