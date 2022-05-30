import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DescriptionTextfield extends StatelessWidget {
  final Function onChanged;

  const DescriptionTextfield({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;
    final borderSide = BorderSide(width: 0, color: Colors.white);
    final borderRadius = BorderRadius.circular(13);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
      ),
      width: screenSize.width,
      height: screenSize.height * 0.15,
      child: TextFormField(
        onChanged: (String value) => onChanged(value),
        cursorColor: colorPalette.primaryCollor,
        decoration: InputDecoration(
          hintText: 'Adicione a descrição',
          hintMaxLines: 5,
          hintStyle: TextStyle(color: Colors.black38),
          border: OutlineInputBorder(
            borderSide: borderSide,
            borderRadius: borderRadius,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: borderSide,
            borderRadius: borderRadius,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: borderSide,
            borderRadius: borderRadius,
          ),
        ),
      ),
    );
  }
}
