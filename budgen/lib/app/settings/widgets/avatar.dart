import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar() : super();

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return Container(
      height: 150,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: colorPalette.background,
            child: Icon(
              Icons.person,
              color: colorPalette.primaryCollor,
              size: 40,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Nome do usuário")
        ],
      )),
    );
  }
}
