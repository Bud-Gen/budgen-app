import 'package:budgen/app/home/widgets/email_project_alert.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class FinishProjectButton extends StatelessWidget {
  final Function editEmailProject;
  final Function finishProject;

  const FinishProjectButton({
    this.editEmailProject,
    this.finishProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();

    return FloatingActionButton.extended(
        backgroundColor: colorPalette.primaryDarker,
        label: Text("Finalizar Projeto"),
        onPressed: () async {
          return showDialog(
            context: context,
            builder: (_) {
              return EmailProjectAlert(
                finishProject: () => finishProject(),
                editEmailProject: (String email) => editEmailProject(email),
              );
            },
          );
        });
  }
}
