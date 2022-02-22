import 'package:budgen/app/tabs/widgets/bottom_bar_button.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int index;
  final Function setIndex;

  const BottomBar({
    @required this.index,
    @required this.setIndex,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomBarButton(
            iconData: Icons.home,
            isActive: index == 0,
            onPressed: () => setIndex(0),
          ),
          BottomBarButton(
            iconData: Icons.search,
            isActive: index == 1,
            onPressed: () => setIndex(1),
          ),
          BottomBarButton(
            iconData: Icons.favorite,
            isActive: index == 2,
            onPressed: () => setIndex(2),
          ),
          BottomBarButton(
            iconData: Icons.settings,
            isActive: index == 3,
            onPressed: () => setIndex(3),
          ),
        ],
      ),
    );
  }
}
