import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DiscountButton extends StatelessWidget {
  final Function onTap;
  const DiscountButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final ColorPalette colorPalette = ColorPalette();

    return FloatingActionButton.extended(
      backgroundColor: colorPalette.secondCollor,
      onPressed: () => onTap(),
      label: Text('ADICIONAR \n DESCONTO'),
    );
  }
}
