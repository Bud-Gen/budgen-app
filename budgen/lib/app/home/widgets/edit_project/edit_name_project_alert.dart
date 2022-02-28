import 'package:flutter/material.dart';

class EditNameProjectAlert extends StatelessWidget {
  final Function editProjectName;
  final Function renameProject;
  final String initialName;

  const EditNameProjectAlert({
    required this.editProjectName,
    required this.renameProject,
    required this.initialName,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Editar nome"),
      content: Expanded(
        child: TextFormField(
          initialValue: initialName,
          onChanged: (value) => editProjectName(value),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            renameProject();
            Navigator.pop(context, 'OK');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
