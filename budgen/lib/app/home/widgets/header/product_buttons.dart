import 'package:budgen/utils/widgets/type_button.dart';
import 'package:flutter/material.dart';

class ProductButtons extends StatelessWidget {
  final Function onPressedShowItem;
  final Function onPressedShowWorker;
  final bool showItems;

  const ProductButtons({
    Key? key,
    required this.onPressedShowItem,
    required this.onPressedShowWorker,
    required this.showItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenSize.height * 0.02,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TypeButton(
            showItems: showItems,
            onPressedShowItem: () => onPressedShowItem(),
            onPressedShowWorker: () => onPressedShowWorker(),
          )
        ],
      ),
    );
  }
}
