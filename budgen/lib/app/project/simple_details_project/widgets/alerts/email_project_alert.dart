import 'package:budgen/app/home/home_page.dart';
import 'package:budgen/app/home/widgets/alerts/counter_add_project_textfield.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/custom_progress.dart';
import 'package:flutter/material.dart';

import 'finish_project_alert.dart';

class EmailProjectAlert extends StatelessWidget {
  final Function editEmailProject;
  final Function finishProject;

  const EmailProjectAlert({
    Key? key, required this.editEmailProject, required this.finishProject,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      backgroundColor: colorPalette.alertColor,
      title: Text('Finalizar Projeto'),
      content: Container(
        height: screenSize.height * 0.15,
        width: screenSize.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('adicione um email válido para envio do resumo do projeto.'),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            CounterAddProjectTextfield(
              onChanged: (String value) => editEmailProject(value),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('cancelar'),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => colorPalette.primaryCollor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          onPressed: () async{
            CustomProgress.call(context: context,text: "Finalizando...");
            bool isFinished = await finishProject();
            Navigator.pushReplacement(context,MaterialPageRoute(
                builder: (context) => HomePage()));
            showDialog(
                context: context,
                builder: (_) => FinishProjectAlert(isSuccessful: isFinished));
          },
          child: Text("Finalizar"),
        ),
      ],
    );
  }
}
