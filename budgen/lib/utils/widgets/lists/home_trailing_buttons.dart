import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class HomeTrailingButtons extends StatelessWidget {
  final bool isFavorite;
  final bool hasProject;
  final Function favorite;
  final Function addToProject;

  const HomeTrailingButtons({
    Key? key,
    required this.isFavorite,
    required this.hasProject,
    required this.favorite,
    required this.addToProject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () => favorite(),
          icon: Icon(
            Icons.favorite,
            color:
                isFavorite ? colorPalette.primaryCollor : colorPalette.disabled,
          ),
        ),
        IconButton(
          onPressed: () => addToProject(),
          icon: Icon(
            Icons.add,
            color:
                hasProject ? colorPalette.primaryCollor : colorPalette.disabled,
          ),
        )
      ],
    );
  }
}
