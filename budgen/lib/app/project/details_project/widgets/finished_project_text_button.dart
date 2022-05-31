import 'package:flutter/material.dart';

class FinishedProjectTextButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function onPressed;

  const FinishedProjectTextButton({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(iconData, size: 20, color: Colors.white),
          SizedBox(width: 10),
          Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
