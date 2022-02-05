import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyProjectBody extends StatelessWidget {
  const EmptyProjectBody() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: ColorPalette().getColorPrimary(),
            width: double.infinity,
            height: 100,
          ),
          SizedBox(
            height: 300,
          ),
          Center(
            child: Text('Não há projetos iniciados no momento'),
          ),
        ],
      ),
    );
  }
}
