import 'package:budgen/app/home/widgets/alerts/new_project_textfield.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class NewProjectAlert extends StatelessWidget {
  final Function changeProjectName;
  final Function initProject;

  const NewProjectAlert({
    Key? key,
    required this.changeProjectName,
    required this.initProject,
  }) : super(key: key);

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
      title: Text('Iniciar Projeto'),
      content: Container(
        height: screenSize.height * 0.12,
        width: screenSize.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('adicione um nome ao seu projeto:'),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            NewProjectTextfield(
              onChanged: (String value) => changeProjectName(value),
            ),
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
            initProject();
            Navigator.pop(context);
          },
          child: Text("Concluir"),
        ),
      ],
    );
  }
}
