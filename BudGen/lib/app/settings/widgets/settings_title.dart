import 'package:flutter/material.dart';

class SettingsTitle extends StatelessWidget {
  final Color color;
  final double fontSize;
  const SettingsTitle({
    @required this.color,
    @required this.fontSize,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'CONFIGURAÇÕES',
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
