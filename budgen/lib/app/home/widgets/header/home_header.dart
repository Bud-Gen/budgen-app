import 'package:budgen/app/home/widgets/empty_products_body.dart';
import 'package:budgen/app/home/widgets/header/drawer_button.dart';
import 'package:budgen/app/home/widgets/header/favorite_button.dart';
import 'package:budgen/app/home/widgets/header/init_project_button.dart';
import 'package:budgen/app/home/widgets/header/project_button.dart';
import 'package:budgen/app/home/widgets/header/search_textformfield.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final Function openDrawer;
  final Function onChanged;
  final Function onTapFavorite;
  final Function onInitProject;
  final Function onTapProject;
  final bool hasProject;
  final Project? project;

  const HomeHeader({
    Key? key,
    required this.openDrawer,
    required this.onChanged,
    required this.onTapFavorite,
    required this.hasProject,
    required this.onInitProject,
    required this.onTapProject,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.30,
      color: colorPalette.primaryCollor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenSize.width * 0.13,
              horizontal: screenSize.height * 0.012,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerButton(openDrawer: () => openDrawer()),
                SearchTextFormField(
                  onChanged: (String value) => onChanged(value),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenSize.width * 0.008,
              horizontal: screenSize.height* 0.012,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavoriteButton(onPressed: () => onTapFavorite()),
                if (!hasProject) ...[
                  InitProjectButton(onInitProject: () => onInitProject())
                ] else
                  ProjectButton(
                    onTapProject: () => onTapProject(),
                    value: project!.price.toStringAsFixed(2),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
