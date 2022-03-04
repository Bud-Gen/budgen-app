import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class BottomBarButton extends StatelessWidget {
  final bool isActive;
  final Function onPressed;
  final IconData iconData;

  const BottomBarButton({
    required this.iconData,
    required this.isActive,
    required this.onPressed,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return IconButton(
      icon: Icon(
        iconData,
        color: isActive ? colorPalette.primaryCollor : colorPalette.disabled,
        size: isActive ? 30 : 20,
      ),
      onPressed: () => onPressed(),
    );
  }
}
