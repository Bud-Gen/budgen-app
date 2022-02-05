import 'package:flutter/material.dart';

class FavoriteItemButton extends StatelessWidget {
  final Function onPressed;
  final bool isFavorite;
  const FavoriteItemButton({this.onPressed, @required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.star,
        color: (isFavorite ?? true) ? Colors.yellow : Colors.grey,
      ),
      onPressed: () => onPressed(),
    );
  }
}
