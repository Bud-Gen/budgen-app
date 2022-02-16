import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class EmptyText extends StatelessWidget {
  const EmptyText() : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: 100),
      child: Center(
        child: Card(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: screenSize.height * 0.09,
                  ),
                  child: Icon(
                    Icons.event_busy,
                    color: colorPalette.primaryCollor,
                    size: 100,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.04),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenSize.width * 0.20,
                    right: screenSize.width * 0.20,
                    bottom: screenSize.height * 0.09,
                  ),
                  child: Text(
                    "Lista vazia",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
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
