import 'package:budgen/app/home/widgets/edit_project/edit_name_project_alert.dart';
import 'package:flutter/material.dart';

class EditNameProjectButton extends StatelessWidget {
  final String currentProjectName;
  final Function editProjectName;
  final Function renameProject;

  const EditNameProjectButton({
    required this.currentProjectName,
    required this.editProjectName,
    required this.renameProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.create),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) {
            return EditNameProjectAlert(
              initialName: currentProjectName,
              editProjectName: (String value) => editProjectName(value),
              renameProject: () => renameProject(),
            );
          },
        );
      },
    );
  }
}
