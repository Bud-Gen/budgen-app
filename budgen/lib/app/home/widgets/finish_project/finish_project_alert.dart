import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class FinishProjectAlert extends StatelessWidget {
  const FinishProjectAlert() : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();

    //TODO: ver como fazer esse cara desaparecer sozinho

    return AlertDialog(
      title: Center(child: Text("Projeto Finalizado!")),
      content: Icon(
        Icons.assignment_turned_in_sharp,
        color: colorPalette.primaryDarker,
        size: 60,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
