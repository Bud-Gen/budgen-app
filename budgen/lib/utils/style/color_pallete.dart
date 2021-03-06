import 'package:flutter/material.dart';

class ColorPalette {
  final _primaryCollor = Color(0xFF57ADCF);
  final _primaryLighter = Color(0xFF63C8F0);
  final _secondCollor = Color(0xFF9EC8D9);
  final _primaryDarker = Color(0xFF33697E);
  final _background = Color(0xFFEFEFEF);
  final _disabled = Color(0xFFCCCCCC);
  final _alertCollor = Color(0xFFE7EFF2);

  Color get primaryCollor => _primaryCollor;

  Color get secondCollor => _secondCollor;

  Color get primaryLighter => _primaryLighter;

  Color get primaryDarker => _primaryDarker;

  Color get background => _background;

  Color get disabled => _disabled;

  Color get alertColor => _alertCollor;
}
