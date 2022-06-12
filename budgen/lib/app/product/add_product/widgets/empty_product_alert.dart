import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class EmptyProductAlert extends StatelessWidget {
  const EmptyProductAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      backgroundColor: colorPalette.alertColor,
      title: Text('Não foi possível adicionar produto!'),
      content: Container(
        height: screenSize.height * 0.12,
        width: screenSize.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Falta algum dado necessário para este produto!'),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            Center(
              child: Icon(
                Icons.error,
                size: 55,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => colorPalette.primaryCollor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Sair"),
        ),
      ],
    );
  }
}
