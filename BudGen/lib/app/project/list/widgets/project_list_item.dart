import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class ProjectListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onTap;

  const ProjectListItem({
    @required this.title,
    @required this.subtitle,
    @required this.onTap,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        leading: Icon(
          Icons.app_registration,
          color: ColorPalette().getColorPrimaryDarker(),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: ColorPalette().getColorPrimaryDarker(),
        ),
        subtitle: Text(
          subtitle,
        ),
        onTap: () => onTap(),
      ),
    );
  }
}
