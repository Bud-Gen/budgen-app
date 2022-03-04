import 'package:flutter/material.dart';

class DetailsContent extends StatelessWidget {
  final String content;
  const DetailsContent({
    required this.content,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(screenSize.width * 0.01),
      child: Center(
        child: Text(
          content,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
