import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class EmptyProjectsAlert extends StatelessWidget {
  const EmptyProjectsAlert() : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ColorPalette colorPalette = ColorPalette();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: screenSize.height * 0.24,
            horizontal: screenSize.height * 0.07,
          ),
          child: Center(
            child: Card(
              child: Container(
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
                      "Não existem projetos finalizados.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Após finalizar o projeto, será listado aqui.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
