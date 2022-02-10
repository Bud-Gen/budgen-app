import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class EmptyProjectBody extends StatelessWidget {
  const EmptyProjectBody() : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: colorPalette.disabled,
      height: screenSize.height * 0.78,
      width: screenSize.width,
      child: Center(
        child: Card(
            child: Container(
          height: screenSize.height * 0.4,
          width: screenSize.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.assignment_late,
                color: colorPalette.primaryCollor,
                size: 100,
              ),
              SizedBox(height: screenSize.height * 0.04),
              Text(
                "Não há projeto",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Adicione um novo projeto clicando no botão abaixo.",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
