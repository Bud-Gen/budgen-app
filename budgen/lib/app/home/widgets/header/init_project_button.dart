import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class InitProjectButton extends StatelessWidget {
  final Function onInitProject;

  const InitProjectButton({
    Key? key,
    required this.onInitProject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return FloatingActionButton.extended(
      backgroundColor: colorPalette.secondCollor,
      onPressed: () => onInitProject(),
      label: Text('INICIAR PROJETO'),
    );
  }
}
