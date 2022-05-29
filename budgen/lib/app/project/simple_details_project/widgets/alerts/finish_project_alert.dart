import 'package:budgen/app/home/home_page.dart';
import 'package:budgen/app/home/widgets/alerts/counter_add_project_textfield.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class FinishProjectAlert extends StatelessWidget {
  final bool isSuccessful;

  const FinishProjectAlert({this.isSuccessful = false}) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();

    //TODO: ver como fazer esse cara desaparecer sozinho

    return AlertDialog(
      title: Center(
          child: isSuccessful
              ? Text("Projeto Finalizado!")
              : Text("Ocorreu um erro\n Tente novamente")),
      content: isSuccessful
          ? Icon(
        Icons.assignment_turned_in_sharp,
        color: colorPalette.primaryDarker,
        size: 60,
      )
          : Icon(
        Icons.error,
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