import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class TypeButton extends StatelessWidget {
  final bool showItems;
  final Function onPressedShowItem;
  final Function onPressedShowWorker;

  const TypeButton({
    required this.showItems,
    required this.onPressedShowItem,
    required this.onPressedShowWorker,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width * 0.05;
    final double height = screenSize.height * 0.003;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => onPressedShowItem(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width,
              vertical: height,
            ),
            child: Text('Itens'),
          ),
          style: ElevatedButton.styleFrom(
            primary: showItems ? colorPalette.primaryCollor : Colors.grey,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () => onPressedShowWorker(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width - 15,
              vertical: height,
            ),
            child: Text('Serviços'),
          ),
          style: ElevatedButton.styleFrom(
            primary:
                showItems == false ? colorPalette.primaryCollor : Colors.grey,
          ),
        ),
      ],
    );
  }
}
