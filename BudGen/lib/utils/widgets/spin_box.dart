import 'package:flutter/material.dart';

class SpinBox extends StatelessWidget {
  final int value;
  final Function removeFunction;
  final Function addFunction;
  const SpinBox({this.value, this.removeFunction, this.addFunction}) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: new Icon(Icons.remove),
          onPressed: () => removeFunction(),
        ),
        Text(value.toString()),
        IconButton(
          icon: new Icon(Icons.add),
          onPressed: () => addFunction(),
        ),
      ],
    );
  }
}
