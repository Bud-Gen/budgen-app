import 'package:budgen/app/home/widgets/finish_project/finish_project_alert.dart';
import 'package:budgen/utils/widgets/custom_dialog.dart';
import 'package:budgen/utils/widgets/custom_progress.dart';
import 'package:flutter/material.dart';

class EmailProjectAlert extends StatelessWidget {
  final Function? editEmailProject;
  final Function finishProject;

  const EmailProjectAlert({
    required this.editEmailProject,
    required this.finishProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Email para envio"),
      content: Expanded(
        child: TextFormField(
          onChanged: (String value) => editEmailProject!(value),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () async {
            CustomProgress.call(context: context,text: "Finalizando...");
            bool isFinished = await finishProject();
            Navigator.of(context).pop();
            Navigator.of(context).pop();
            showDialog(
                context: context,
                builder: (_) => FinishProjectAlert(isSuccessful: isFinished));
          },
          child: const Text('finalizar'),
        ),
      ],
    );
  }
}
