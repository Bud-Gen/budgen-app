import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class TotalPriceCard extends StatelessWidget {
  final String price;

  const TotalPriceCard({
    required this.price,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(5),
      child: Card(
        color: colorPalette.background,
        child: Container(
          height: screenSize.height * 0.10,
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
                height: screenSize.height * 0.012,
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
