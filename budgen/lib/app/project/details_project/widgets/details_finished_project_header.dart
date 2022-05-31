import 'package:budgen/app/project/details_project/widgets/finished_project_text_button.dart';
import 'package:budgen/app/project/details_project/widgets/info_finished_project.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DetailsFinishedProjectHeader extends StatelessWidget {
  final Project? project;
  final Function copyProject;
  final Function deleteProject;

  const DetailsFinishedProjectHeader({
    required this.project,
    required this.copyProject,
    required this.deleteProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: colorPalette.primaryCollor,
      height: 150,
      width: screenSize.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InfoFinishedProject(project: project!),
          Padding(
            padding: EdgeInsets.only(right: 20, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FinishedProjectTextButton(
                  title: 'copiar',
                  iconData: Icons.copy,
                  onPressed: () => copyProject(),
                ),
                FinishedProjectTextButton(
                  title: 'excluir',
                  iconData: Icons.delete_outline_outlined,
                  onPressed: () => deleteProject(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
