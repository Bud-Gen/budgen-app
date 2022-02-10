import 'package:budgen/app/home/home_store.dart';
import 'package:budgen/app/home/widgets/add_project/add_project_button.dart';
import 'package:budgen/app/home/widgets/details_project/details_project.dart';
import 'package:budgen/app/home/widgets/edit_project/edit_name_project_button.dart';
import 'package:budgen/app/home/widgets/finish_project/finish_project_button.dart';
import 'package:budgen/utils/style/color_pallete.dart';
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
    store.onInit();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        title:
            Observer(builder: (_) => Text(store?.currentProject?.name ?? "")),
        actions: [
          Observer(
            builder: (_) => (store.existsProject)
                ? EditNameProjectButton(
                    currentProjectName: store.currentProject.name,
                    editProjectName: (String value) =>
                        store.editProjectName(value),
                    renameProject: () => store.renameProject(),
                  )
                : SizedBox(),
          ),
        ],
      ),
      body: Column(
        children: [
          Observer(builder: (_) {
            return DetailsProject(
              project: store.currentProject,
              addDiscount: () => store.addDiscount(),
              addDiscountValue: (String value) => store.editDiscount(value),
            );
          }),
        ],
      ),
      floatingActionButton: Observer(
        builder: (_) => !store.existsProject
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
