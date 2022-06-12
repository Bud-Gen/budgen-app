import 'package:budgen/app/home/widgets/alerts/counter_add_project_textfield.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class AddProjectAlert extends StatelessWidget {
  final String name;
  final String typeName;
  final Function addToProject;
  final Function onChanged;

  const AddProjectAlert({
    Key? key,
    required this.name,
    required this.typeName,
    required this.addToProject,
    required this.onChanged,
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
      title: Text('Adicionar $name'),
      content: Container(
        height: screenSize.height * 0.15,
        width: screenSize.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Selecione a quantidade do $typeName para este orçamento:'),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            CounterAddProjectTextfield(
              onChanged: (String value) => onChanged(value),
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
          onPressed: () {
            addToProject();

            Navigator.pop(context);
          },
          child: Text("Concluir"),
        ),
      ],
    );
  }
}
