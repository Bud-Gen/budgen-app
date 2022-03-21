import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({required this.text,required this.onPressed,this.color = Colors.grey});
  final String text;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () => onPressed(),
    );
  }
}
