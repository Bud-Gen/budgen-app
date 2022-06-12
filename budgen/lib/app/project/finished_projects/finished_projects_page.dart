import 'package:budgen/app/project/finished_projects/finished_projects_store.dart';
import 'package:budgen/app/project/finished_projects/widgets/empty_projects_alert.dart';
import 'package:budgen/app/project/finished_projects/widgets/finished_projects_list.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FinishedProjectsPage extends StatefulWidget {
  const FinishedProjectsPage() : super();

  @override
  State<FinishedProjectsPage> createState() => _FinishedProjectsPageState();
}

class _FinishedProjectsPageState extends State<FinishedProjectsPage> {
    FinishedProjectsStore store = FinishedProjectsStore();

  @override
  void initState() {
    store.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();



    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPalette.primaryCollor,
        title: Text("Projetos Finalizados"),
      ),
      body: Column(
        children: [
          Observer(
            builder: (BuildContext context) {
              if (store.projects == null || store.projects!.isEmpty)
                return EmptyProjectsAlert();

              return FinishedProjectsList(
                projects: store.projects!,
                existsCurrentProject: store.existsCurrentProject,
                deleteProject: (Project project) =>
                    store.deleteProject(project),
                copyProject: (Project project) => store.copyProject(project),
                showSnack: () =>
                    showSnack(context: context, content: "Projeto copiado!"),
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
    final snack = SnackBar(
      content: Text(content), //TODO: corrigir isso aqui
      duration: Duration(milliseconds: 500),
    );
    Scaffold.of(context).showSnackBar(snack);
  }
}
