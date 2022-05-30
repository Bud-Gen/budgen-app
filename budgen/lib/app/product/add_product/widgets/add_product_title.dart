import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class AddProductTitle extends StatelessWidget {
  const AddProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return Text(
      'Preencha os dados do produto:',
      style: TextStyle(
        color: colorPalette.primaryCollor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
