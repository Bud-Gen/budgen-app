import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class NewProjectTextfield extends StatelessWidget {
  final Function onChanged;

  const NewProjectTextfield({
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
      width: screenSize.width * 0.78,
      height: screenSize.height * 0.06,
      child: TextFormField(
        onChanged: (String value) => onChanged(value),
        cursorColor: colorPalette.primaryCollor,
        decoration: InputDecoration(
          hintText: 'Insira o nome',
          hintMaxLines: 1,
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
