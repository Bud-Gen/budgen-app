import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData iconData;
  final Function onTap;
  final String title;

  const SettingsTile({
    required this.iconData,
    required this.onTap,
    required this.title,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(iconData),
        title: Text(title),
        onTap: () => onTap(),
      ),
    );
  }
}
