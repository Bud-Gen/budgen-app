import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class ProjectButton extends StatelessWidget {
  final Function onTapProject;
  final String value;
  const ProjectButton({
    Key? key,
    required this.onTapProject,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return TextButton(
      onPressed: () => onTapProject(),
      child: Row(
        children: [
          Icon(Icons.shopping_cart_rounded, color: Colors.white),
          SizedBox(width: screenSize.width * 0.02),
          Text(
            'R\$ $value',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(width: screenSize.width * 0.02),
        ],
      ),
    );
  }
}
