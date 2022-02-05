import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class SettingsOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const SettingsOption({
    @required this.icon,
    @required this.title,
    @required this.onTap,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final colorPrimary = ColorPalette().getColorPrimary();

    return Card(
      child: ListTile(
        leading: Icon(icon, color: colorPrimary),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: colorPrimary,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: colorPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        onTap: () => onTap(),
      ),
    );
  }
}
