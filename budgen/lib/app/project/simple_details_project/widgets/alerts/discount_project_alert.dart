import 'package:budgen/app/home/widgets/alerts/counter_add_project_textfield.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/custom_progress.dart';
import 'package:flutter/material.dart';

import 'finish_project_alert.dart';

class DiscountProjectAlert extends StatelessWidget {
  final Function addDiscount;
  final Function addDiscountValue;
  final Project project;

  const DiscountProjectAlert({
    Key? key, required this.addDiscount, required this.addDiscountValue, required this.project,

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
      title: Text('Adicionar Desconto'),
      content: Container(
        height: screenSize.height * 0.15,
        width: screenSize.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Adicione o valor do desconto para o projeto'),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            CounterAddProjectTextfield(
              onChanged: (String value) => addDiscountValue(value),
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
            addDiscount();
            Navigator.pop(context, 'OK');
          },
          child: Text("Adicionar"),
        ),
      ],
    );
  }
}
