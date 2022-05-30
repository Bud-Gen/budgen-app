import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class SetProductRadioList extends StatelessWidget {
  final bool groupValue;
  final Function setItem;
  final Function setWorker;

  const SetProductRadioList({
    Key? key,
    required this.groupValue,
    required this.setItem,
    required this.setWorker,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return Column(
      children: [
        RadioListTile<bool>(
          activeColor: colorPalette.primaryCollor,
          title: Text('Item'),
          value: true,
          groupValue: groupValue,
          onChanged: (value) {
            setItem();
          },
        ),
        RadioListTile<bool>(
          activeColor: colorPalette.primaryCollor,
          title: Text('Serviço'),
          value: false,
          groupValue: groupValue,
          onChanged: (value) {
            setWorker();
          },
        ),
      ],
    );
  }
}
