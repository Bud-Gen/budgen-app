import 'package:budgen/app/home/widgets/add_discount/add_discount_alert.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class AddDiscountButton extends StatelessWidget {
  final Function addDiscount;
  final Function addDiscountValue;
  final Project project;

  const AddDiscountButton({
    required this.addDiscountValue,
    required this.addDiscount,
    required this.project,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();

    return FloatingActionButton.extended(
      backgroundColor: colorPalette.primaryDarker,
      label: Row(children: [
        Icon(
          Icons.add,
          color: colorPalette.background,
        ),
        Text(
          "Desconto",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: colorPalette.background),
        ),
      ]),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => AddDiscountAlert(
            project: project,
            addDiscount: () => addDiscount(),
            addDiscountValue: (String value) => addDiscountValue(value),
          ),
        );
        addDiscount();
      },
    );
  }
}
