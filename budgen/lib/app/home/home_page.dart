import 'package:budgen/app/home/home_store.dart';
import 'package:budgen/app/home/widgets/add_project/add_project_button.dart';
import 'package:budgen/app/home/widgets/edit_project/edit_name_project_button.dart';
import 'package:budgen/app/home/widgets/empty_project_body.dart';
import 'package:budgen/app/home/widgets/finish_project/finish_project_button.dart';
import 'package:budgen/app/home/widgets/product_list/empty_products_advice.dart';
import 'package:budgen/app/home/widgets/product_list/item_list/project_items_tile.dart';
import 'package:budgen/app/home/widgets/product_list/worker_list/project_workers_tile.dart';
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
        backgroundColor: colorPalette.primaryCollor,
        title: Observer(builder: (_) {
          return Text((store.existsProject) ? store.currentProject!.name : "");
        }),
        actions: [
          Observer(builder: (_) {
            if (!store.existsProject) return SizedBox(width: 1);

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
                if (!store.existsProject) return EmptyProjectBody();

                return DetailsProject(
                  project: store.currentProject!,
                  addDiscount: () => store.addDiscount(),
                  addDiscountValue: (String value) => store.editDiscount(value),
                );
              },
            ),
            Observer(builder: (_) {
              if (store.existsProject) {
                if (store.isProjectEmpty) return EmptyProductsAdvice();
                return Container(
                  height: 10000,
                  child: ListView(
                    children: [
                      if (store.currentProject!.items!.isNotEmpty) ...[
                        Center(
                          child: Text(
                            "Itens",
                            style: TextStyle(fontSize: 26),
                          ),
                        ),
                        for (Item item in store.items!) ...[
                          ProjectItemsTile(
                            removeItem: (Item item) => store.removeItem(item),
                            item: item,
                            qtd: store.currentProject!.items![item.id]
                                .toString(),
                            alterValue: (int value, Item item) =>
                                store.alterItemQuantity(value, item),
                          ),
                        ],
                      ],
                      if (store.workers != null &&
                          store.workers!.isNotEmpty) ...[
                        Center(
                          child: Text(
                            "Serviços",
                            style: TextStyle(fontSize: 26),
                          ),
                        ),
                        for (Worker worker in store.workers!) ...[
                          ProjectWorkersTile(
                            removeWorker: (Worker worker) =>
                                store.removeWorker(worker),
                            worker: worker,
                            qtd: store.currentProject!.workers![worker.id]
                                .toString(),
                            alterValue: (
                              int value,
                              Worker worker,
                            ) =>
                                store.alterWorkerQuantity(value, worker),
                          ),
                        ]
                      ],
                      Container(
                        height: 1000,
                      ),
                    ],
                  ),
                );
              } else {
                return SizedBox(height: 1, width: 1);
              }
            }),
          ],
        ),
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
