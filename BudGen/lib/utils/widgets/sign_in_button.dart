import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final ColorPalette colorPalette = ColorPalette();

  SignInButton({
    @required this.onPressed,
  });

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 45,
        width: 200,
        child: FlatButton(
          color: colorPalette.getColorWhite(),
          onPressed: onPressed,
          child: Text(
            "Login com Google",
            style: TextStyle(color: colorPalette.getColorPrimary()),
          ),
        ),
      ),
    );
  }
}
