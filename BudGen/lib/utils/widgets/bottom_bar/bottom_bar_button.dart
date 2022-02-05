import 'package:flutter/material.dart';

class BottomBarButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final Color color;

  const BottomBarButton({
    this.onTap,
    this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          child: Ink(
            child: Center(
              child: Icon(
                icon,
                size: 27,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
