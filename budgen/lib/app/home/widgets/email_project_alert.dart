import 'package:budgen/app/home/widgets/finish_project/finish_project_alert.dart';
import 'package:flutter/material.dart';

class EmailProjectAlert extends StatelessWidget {
  final Function editEmailProject;
  final Function finishProject;

  const EmailProjectAlert({
    this.editEmailProject,
    this.finishProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Email para envio"),
      content: Expanded(
        child: TextFormField(
          onChanged: (String value) => editEmailProject(value),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            finishProject();
            showDialog(context: context, builder: (_) => FinishProjectAlert());
          },
          child: const Text('finalizar'),
        ),
      ],
    );
  }
}
