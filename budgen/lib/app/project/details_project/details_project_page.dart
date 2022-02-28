import 'package:budgen/app/project/details_project/details_project_store.dart';
import 'package:budgen/app/project/details_project/widgets/delete_project_alert.dart';
import 'package:budgen/app/project/details_project/widgets/details_finished_project_header.dart';
import 'package:budgen/app/project/details_project/widgets/details_finished_project_list.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DetailsProjectPage extends StatelessWidget {
  final Project project;

  const DetailsProjectPage({
    required this.project,
  }) : super();

  @override
  Widget build(BuildContext context) {
    DetailsProjectStore store = DetailsProjectStore();
    ColorPalette colorPalette = ColorPalette();

    store.onInit(project);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        title: Text(project.name),
        actions: [
          Observer(builder: (context) {
            return Row(
              children: [
                if (!store.existsCurrentProject)
                  IconButton(
                    icon: Icon(
                      Icons.copy,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      store.copyProject(project);
                      showSnack(context: context, content: "Projeto Copiado!");
                    },
                  ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return DeleteProjectAlert(
                          deleteProject: () => store.deleteProject(),
                        );
                      },
                    );
                  },
                ),
              ],
            );
          }),
        ],
      ),
      body: Column(
        children: [
          DetailsFinishedProjectHeader(
            project: project,
          ),
          Observer(
            builder: (_) {
              if (store.isLoading) return CircularProgressIndicator();
              return DetailsFinishedProjectList(
                project: project,
                items: store.items!,
                workers: store.workers!,
              );
            },
          ),
        ],
      ),
    );
  }

  void showSnack({
    required BuildContext context,
    required String content,
  }) {
    //TODO: corrigir isso que tá errado mds

    final snack = SnackBar(
      content: Text(content),
      duration: Duration(milliseconds: 500),
    );
    Scaffold.of(context).showSnackBar(snack);
  }
}
