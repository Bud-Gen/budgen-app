import 'package:budgen/app/home/widgets/add_project/add_name_project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class AddProjectButton extends StatelessWidget {
  final Function newProject;
  final Function addProjectName;

  const AddProjectButton({
    required this.newProject,
    required this.addProjectName,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();

    return FloatingActionButton.extended(
        backgroundColor: colorPalette.primaryLighter,
        onPressed: () async {
          showDialog(
            context: context,
            builder: (_) {
              return AddNameProjectAlert(
                addProjectName: (String value) => addProjectName(value),
                addProject: () => newProject(),
              );
            },
          );
        },
        label: Row(
          children: [
            Icon(Icons.add),
            Text("Novo Projeto"),
          ],
        ));
  }
}
