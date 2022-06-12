import 'package:flutter/material.dart';

class DeleteProjectAlert extends StatelessWidget {
  final Function deleteProject;

  const DeleteProjectAlert({
    required this.deleteProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Deseja deletar projeto?"),
      actions: [
        TextButton(
          child: Text('Sim'),
          onPressed: () {
            Navigator.of(context).pop();
            deleteProject();
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Não'),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
