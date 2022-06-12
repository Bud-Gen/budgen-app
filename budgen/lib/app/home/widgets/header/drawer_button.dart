import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final Function openDrawer;
  const DrawerButton({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => openDrawer(),
      icon: Icon(
        Icons.view_headline,
        color: Colors.white,
      ),
    );
  }
}
