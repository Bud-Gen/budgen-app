import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class TypeButton extends StatelessWidget {
  final bool showItems;
  final Function onPressedShowItem;
  final Function onPressedShowWorker;

  const TypeButton({
    @required this.showItems,
    @required this.onPressedShowItem,
    @required this.onPressedShowWorker,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          color: showItems ? colorPalette.primaryCollor : Colors.grey,
          child: Text(
            "Itens",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => onPressedShowItem(),
        ),
        SizedBox(
          width: 10,
        ),
        RaisedButton(
          color: !showItems ? colorPalette.primaryCollor : Colors.grey,
          child: Text(
            "Serviços",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => onPressedShowWorker(),
        )
      ],
    );
  }
}
