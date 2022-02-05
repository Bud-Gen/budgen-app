import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class ProjectListHeader extends StatelessWidget {
  const ProjectListHeader() : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Container(
        child: Center(
          child: Text(
            'Lista de Projetos finalizados',
            style: TextStyle(
              color: ColorPalette().getColorPrimaryDarker(),
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
