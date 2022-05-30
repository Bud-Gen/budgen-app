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
      title: Text('Adicionar Produto'),
      content: Container(
        height: screenSize.height * 0.12,
        width: screenSize.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Produto adicionado com sucesso!'),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            Center(
              child: Icon(
                Icons.post_add_rounded,
                size: 55,
                color: colorPalette.primaryCollor,
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
          child: Text("Concluir"),
        ),
      ],
    );
  }
}
