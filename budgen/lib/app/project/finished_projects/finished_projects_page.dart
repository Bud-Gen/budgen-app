import 'package:budgen/app/project/finished_projects/finished_projects_store.dart';
import 'package:budgen/app/project/finished_projects/widgets/empty_projects_alert.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FinishedProjectsPage extends StatelessWidget {
  const FinishedProjectsPage() : super();

  @override
  Widget build(BuildContext context) {
    FinishedProjectsStore store = FinishedProjectsStore();
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    store.onInit();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        title: Text("Lista de Projetos"),
      ),
      body: Column(
        children: [
          Observer(
            builder: (BuildContext context) {
              if (store.projects == null || store.projects.isEmpty)
                return EmptyProjectsAlert();

              return Expanded(
                child: ListView(
                  children: [
                    for (Project project in store.projects) ...[
                      Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.insert_chart,
                            size: 45,
                          ),
                          title: Text(project.name),
                          subtitle: Text((project?.price - project?.discount)
                              .toStringAsFixed(2)),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: colorPalette.primaryCollor,
                                ),
                                onPressed: () {
                                  store.deleteProject(project);
                                },
                              ),
                              SizedBox(width: 4),
                              IconButton(
                                icon: Icon(
                                  Icons.copy_rounded,
                                  color: (!store.existsCurrentProject)
                                      ? colorPalette.primaryCollor
                                      : colorPalette.disabled,
                                ),
                                onPressed: () {
                                  if (!store.existsCurrentProject) {
                                    store.copyProject(project);
                                    showSnack(
                                      context: context,
                                      content: "projeto copiado",
                                    );
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ]
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void showSnack({
    @required BuildContext context,
    @required String content,
  }) {
    final snack = SnackBar(content: Text(content));
    Scaffold.of(context).showSnackBar(snack);
  }
}
