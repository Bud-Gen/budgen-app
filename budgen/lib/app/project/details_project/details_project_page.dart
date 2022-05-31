import 'package:budgen/app/home/widgets/header/product_buttons.dart';
import 'package:budgen/app/project/details_project/details_project_store.dart';
import 'package:budgen/app/project/details_project/widgets/delete_project_alert.dart';
import 'package:budgen/app/project/details_project/widgets/details_finished_project_header.dart';
import 'package:budgen/app/project/details_project/widgets/finished_product_item_list.dart';
import 'package:budgen/app/project/details_project/widgets/finished_product_worker_list.dart';
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
        elevation: 0,
        backgroundColor: colorPalette.primaryCollor,
        centerTitle: true,
        title: Text('Projeto'),
      ),
      body: Column(
        children: [
          DetailsFinishedProjectHeader(
            project: project,
            copyProject: () {
              store.copyProject(project);
              showSnack(context: context, content: "Projeto Copiado!");
            },
            deleteProject: () {
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
          Observer(
            builder: (_) {
              if (store.isLoading) return CircularProgressIndicator();
              return SingleChildScrollView(
                child: Column(
                  children: [
                    ProductButtons(
                      showItems: store.showItems,
                      onPressedShowItem: () => store.viewItems(true),
                      onPressedShowWorker: () => store.viewItems(false),
                    ),
                    if (store.showItems)
                      FinishedProductItemList(
                        items: store.items,
                        project: store.project,
                      )
                    else
                      FinishedProductWorkerList(
                        project: store.project,
                        workers: store.workers,
                      )
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
    required BuildContext context,
    required String content,
  }) {
    final snack = SnackBar(
      content: Text(content),
      duration: Duration(milliseconds: 500),
    );
    Scaffold.of(context).showSnackBar(snack);
  }
}
