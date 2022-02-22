import 'package:budgen/app/home/home_store.dart';
import 'package:budgen/app/home/widgets/add_project/add_project_button.dart';
import 'package:budgen/app/home/widgets/edit_project/edit_name_project_button.dart';
import 'package:budgen/app/home/widgets/finish_project/finish_project_button.dart';
import 'package:budgen/app/home/widgets/product_list/empty_products_advice.dart';
import 'package:budgen/app/home/widgets/product_list/item_list/project_items_list.dart';
import 'package:budgen/app/home/widgets/product_list/worker_list/project_workers_list.dart';
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
    store.onInit();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        title: Observer(builder: (_) {
          return Text((!store.isLoading && store.existsProject)
              ? store?.currentProject?.name
              : "");
        }),
        actions: [
          Observer(builder: (_) {
            if (store.isLoading && !store.existsProject)
              return SizedBox(width: 0);

            return EditNameProjectButton(
              currentProjectName: store.currentProject?.name,
              editProjectName: (String value) => store.editProjectName(value),
              renameProject: () => store.renameProject(),
            );
          }),
        ],
      ),
      body: Column(
        children: [
          Observer(builder: (_) {
            if (store.isLoading) return SizedBox(width: 0);

            return DetailsProject(
              project: store.currentProject,
              addDiscount: () => store.addDiscount(),
              addDiscountValue: (String value) => store.editDiscount(value),
            );
          }),
          TextButton(onPressed: () => store.addMock(), child: Text("mock")),
          //TODO: remover
          Observer(
            builder: (_) {
              if (store.showProducts) {
                if (store.isProjectEmpty)
                  return EmptyProductsAdvice();
                else
                  return Expanded(
                    child: ListView(
                      children: [
                        ProjectItemsList(
                          alterItemQuantity: (int value, Item item) =>
                              store.alterItemQuantity(value, item),
                          items: store.items,
                          qtdItems: store.currentProject.items,
                          removeItem: (Item item) => store.removeItem(item),
                        ),
                        ProjectWorkersList(
                          removeWorker: (Worker worker) =>
                              store.removeWorker(worker),
                          qtdWorkers: store.currentProject.workers,
                          workers: store.workers,
                          alterWorkerQuantity: (int value, Worker worker) =>
                              store.alterWorkerQuantity(value, worker),
                        ),
                      ],
                    ),
                  );
              } else {
                return SizedBox(height: 0);
              }
            },
          )
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
