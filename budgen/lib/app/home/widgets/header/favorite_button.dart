import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final Function onPressed;
  const FavoriteButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return TextButton(
      onPressed: () => onPressed(),
      child: Row(
        children: [
          Icon(Icons.dashboard, color: Colors.white),
          SizedBox(width: screenSize.width * 0.02),
          Text(
            'FAVORITOS',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
