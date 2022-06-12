import 'package:budgen/app/project/simple_details_project/widgets/alerts/discount_project_alert.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DiscountButton extends StatelessWidget {
  final Function addDiscount;
  final Function addDiscountValue;
  final Project project;

  const DiscountButton({
    Key? key, required this.addDiscount, required this.addDiscountValue, required this.project,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final ColorPalette colorPalette = ColorPalette();

    return FloatingActionButton.extended(
      backgroundColor: colorPalette.secondCollor,
      onPressed: () => {
      showDialog(
      context: context,
      builder: (_) => DiscountProjectAlert(
      project: project,
      addDiscount: () => addDiscount(),
      addDiscountValue: (String value) => addDiscountValue(value),
      ),
      ),
        addDiscount()
      },
      label: Text('ADICIONAR \n DESCONTO'),
    );
  }
}
