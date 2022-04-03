import 'package:budgen/app/home/home_store.dart';
import 'package:budgen/app/home/widgets/add_project/add_project_button.dart';
import 'package:budgen/app/home/widgets/edit_project/edit_name_project_button.dart';
import 'package:budgen/app/home/widgets/empty_project_body.dart';
import 'package:budgen/app/home/widgets/finish_project/finish_project_button.dart';
import 'package:budgen/app/home/widgets/home_body.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/details_project/details_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    HomeStore store = HomeStore();
    ColorPalette colorPalette = ColorPalette();
    store.pageContext = context;
    store.onInit();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorPalette.primaryCollor,
        title: Observer(builder: (_) {
          return Text(store.getProjectName());
        }),
        actions: [
          Observer(builder: (_) {
            if (store.currentProject == null) return SizedBox(width: 1);

            return EditNameProjectButton(
              currentProjectName: store.currentProject!.name,
              editProjectName: (String value) => store.editProjectName(value),
              renameProject: () => store.renameProject(),
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Observer(
              builder: (_) {
                if (store.isLoading) return SizedBox(width: 0);
                if (!store.getExistsProject()) return EmptyProjectBody();

                return DetailsProject(
                  project: store.currentProject!,
                  addDiscount: () => store.addDiscount(),
                  addDiscountValue: (String value) => store.editDiscount(value),
                );
              },
            ),
            Observer(builder: (_) {
              return HomeBody(
                project: store.currentProject,
                items: store.items,
                workers: store.workers,
                alterItemQuantity: (int value, Item item) =>
                    store.alterItemQuantity(value, item),
                alterWorkerQuantity: (int value, Worker worker) =>
                    store.alterWorkerQuantity(value, worker),
                removeWorker: (Worker worker) => store.removeWorker(worker),
                removeItem: (Item item) => store.removeItem(item),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Observer(
        builder: (_) => store.currentProject == null
            ? AddProjectButton(
                addProjectName: (String value) => store.editProjectName(value),
                newProject: () => store.addNewProject(),
              )
            : FinishProjectButton(
                editEmailProject: (String value) =>
                    store.editEmailProject(value),
                finishProject: () => store.finishProject(),
              ),
      ),
    );
  }
}
