import 'package:flutter/material.dart';

class AddProductText extends StatelessWidget {
  final String value;

  AddProductText(this.value);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(fontSize: 16),
    );
  }
}
