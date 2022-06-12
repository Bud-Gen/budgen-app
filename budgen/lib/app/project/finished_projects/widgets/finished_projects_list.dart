import 'package:budgen/app/project/details_project/details_project_page.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class FinishedProjectsList extends StatelessWidget {
  final List<Project> projects;
  final Function(Project) deleteProject;
  final Function(Project) copyProject;
  final Function showSnack;
  final bool existsCurrentProject;

  const FinishedProjectsList({
    required this.projects,
    required this.deleteProject,
    required this.existsCurrentProject,
    required this.copyProject,
    required this.showSnack,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();

    return Expanded(
      child: ListView(
        children: [
          for (Project project in projects) ...[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Container(
                child: Card(
                  child: ListTile(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        settings: RouteSettings(name: "/page"),
                        builder: (context) =>
                            DetailsProjectPage(project: project),
                      ),
                    ),
                    leading: Column(
                      children: [
                        Icon(
                          Icons.insert_chart,
                          size: 40,
                          color: colorPalette.primaryCollor,
                        ),
                      ],
                    ),
                    title: Text(project.name),
                    subtitle: Text('preço finalizado: R\$' +
                        (project.price - project.discount).toStringAsFixed(2)),
                    trailing: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.copy_rounded,
                              color: (!existsCurrentProject)
                                  ? colorPalette.primaryCollor
                                  : colorPalette.disabled,
                            ),
                            onTap: () {
                              if (!existsCurrentProject) {
                                copyProject(project);
                                showSnack();
                              }
                            },
                          ),
                          SizedBox(height: 4,),
                          InkWell(
                            child: Icon(
                              Icons.delete_outlined,
                              color: colorPalette.primaryCollor,
                            ),
                            onTap: () {
                              deleteProject(project);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]
        ],
      ),
    );
  }
}
