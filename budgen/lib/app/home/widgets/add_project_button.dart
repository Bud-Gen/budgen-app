import 'package:budgen/app/home/widgets/add_name_project.dart';
import 'package:flutter/material.dart';

class AddProjectButton extends StatelessWidget {
  final Function newProject;
  final Function addProjectName;

  const AddProjectButton({
    this.newProject,
    this.addProjectName,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
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
      label: Text(
        "Novo Projeto",
      ),
    );
  }
}
