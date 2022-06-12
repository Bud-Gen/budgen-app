import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class AddProductButton extends StatelessWidget {
  final Function onPressed;
  const AddProductButton({required this.onPressed}) : super();

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return FloatingActionButton.extended(
      backgroundColor: colorPalette.primaryCollor,
      onPressed: () => onPressed(),
      label: Row(
        children: [Icon(Icons.add), Text('PRODUTO')],
      ),
    );
  }
}
