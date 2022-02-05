import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  final Function onPressed;
  const LogoutButton({@required this.onPressed}) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: FloatingActionButton.extended(
        backgroundColor: ColorPalette().getColorPrimary(),
        onPressed: () => onPressed(),
        label: SizedBox(
          width: 100,
          child: Center(child: Text('Sair')),
        ),
      ),
    );
  }
}
