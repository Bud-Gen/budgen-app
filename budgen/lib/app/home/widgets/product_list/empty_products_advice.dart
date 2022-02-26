import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class EmptyProductsAdvice extends StatelessWidget {
  const EmptyProductsAdvice() : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ColorPalette colorPalette = ColorPalette();

    return Padding(
      padding: EdgeInsets.only(top: screenSize.height * 0.13),
      child: Center(
        child: Card(
          child: Container(
            height: screenSize.height * 0.4,
            width: screenSize.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.event_busy,
                  color: colorPalette.primaryCollor,
                  size: 100,
                ),
                SizedBox(height: screenSize.height * 0.04),
                Text(
                  "Lista Vazia",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Adicione itens e serviços no projeto.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
