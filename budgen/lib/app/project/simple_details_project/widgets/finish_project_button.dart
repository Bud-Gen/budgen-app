import 'package:budgen/app/project/simple_details_project/widgets/alerts/email_project_alert.dart';
import 'package:budgen/app/project/simple_details_project/widgets/alerts/finish_project_alert.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class FinishProjectButton extends StatelessWidget {
  final Function editEmailProject;
  final Function finishProject;

  const FinishProjectButton(
      {required this.editEmailProject, required this.finishProject})
      : super();

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return FloatingActionButton.extended(
      backgroundColor: colorPalette.primaryCollor,
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
      },
      label: Row(
        children: [Text('FINALIZAR')],
      ),
    );
  }
}
