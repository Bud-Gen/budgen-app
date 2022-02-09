import 'package:flutter/material.dart';

class AddNameProjectAlert extends StatelessWidget {
  final Function addProjectName;
  final Function addProject;

  const AddNameProjectAlert({
    this.addProjectName,
    this.addProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Nome do Projeto"),
      content: Expanded(
        child: TextFormField(
          initialValue: "Novo projeto",
          onChanged: (String value) => addProjectName(value),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            addProject();
            Navigator.pop(context, 'OK');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
