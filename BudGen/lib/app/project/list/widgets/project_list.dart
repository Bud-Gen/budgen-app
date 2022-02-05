import 'package:BudGen/app/project/details/details_project_page.dart';
import 'package:BudGen/app/project/list/widgets/project_list_item.dart';
import 'package:BudGen/domain/entities/project.dart';
import 'package:BudGen/utils/commons/date_format.dart';
import 'package:flutter/material.dart';

class ProjectList extends StatelessWidget {
  final List<Project> projects;

  ProjectList({
    @required this.projects,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: projects.length,
      itemBuilder: (BuildContext context, int i) {
        return ProjectListItem(
          title: projects[i].name,
          subtitle: DateFormated().toABNT(projects[i].createdAt),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsProjectPage(
                project: projects[i],
              ),
            ),
          ),
        );
      },
    ));
  }
}
