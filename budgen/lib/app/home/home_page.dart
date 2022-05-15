import 'package:budgen/app/home/home_store.dart';
import 'package:budgen/app/home/widgets/add_product_button.dart';
import 'package:budgen/app/home/widgets/alerts/add_project_alert.dart';
import 'package:budgen/app/home/widgets/alerts/new_project_alert.dart';
import 'package:budgen/app/home/widgets/empty_products_body.dart';
import 'package:budgen/app/home/widgets/header/home_header.dart';
import 'package:budgen/app/home/widgets/header/product_bottons.dart';
import 'package:budgen/app/home/widgets/lists/item_list.dart';
import 'package:budgen/app/home/widgets/lists/worker_list.dart';
import 'package:budgen/app/import/import_spreadsheet_page.dart';
import 'package:budgen/app/project/simple_details_project_page.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeStore store = HomeStore();

  @override
  void initState() {
    store.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        backgroundColor: colorPalette.background,
        key: scaffoldKey,
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Container(
            height: screenSize.height,
            width: screenSize.width,
            child: Observer(
              builder: (context) {
                if (store.isLoading)
                  return Center(
                    child: CircularProgressIndicator(
                      color: colorPalette.primaryDarker,
                    ),
                  );
                return Column(
                  children: [
                    HomeHeader(
                      openDrawer: () => scaffoldKey.currentState?.openDrawer(),
                      onChanged: (String value) => store.changeFilter(value),
                      onTapFavorite: () => print('on tap favorite'),
                      onInitProject: () {
                        return showCupertinoModalPopup(
                          context: context,
                          builder: (_) {
                            return NewProjectAlert(
                              changeProjectName: (String value) =>
                                  store.changeProjectName(value),
                              initProject: () {
                                store.initProject();
                                Navigator.pop(context);
                              },
                            );
                          },
                        );
                      },
                      hasProject: store.currentProject != null,
                      onTapProject: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SimpleDetailsProject(
                              project: store.currentProject!,
                            ),
                          ),
                        );
                      },
                      project: store.currentProject != null
                          ? store.currentProject
                          : null,
                    ),
                    if (store.workers == null && store.items == null)
                      EmptyProductsBody(
                        downloadSpreadsheet: () {},
                        uploadSpreadsheet: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImportSpreadsheetPage(),
                            ),
                          );
                        },
                      )
                    else ...[
                      ProductBottons(
                        showItems: store.showItems,
                        onPressedShowItem: () => store.viewItems(true),
                        onPressedShowWorker: () => store.viewItems(false),
                      ),
                      if (store.showItems)
                        ItemList(
                          items: store.items,
                          hasProject: store.currentProject != null,
                          addToProject: store.addItemToProject,
                          favorite: store.changeFavoriteItem,
                          onChangedValue: (String value) {
                            print(store.productQuantity.toString());
                            store.changeProductQuantity(value);
                          },
                        )
                      else
                        WorkerList(
                          workers: store.workers,
                          hasProject: store.currentProject != null,
                          addToProject: store.addWorkerToProject,
                          favorite: store.changeFavoriteWorker,
                          onChangedValue: (String value) {
                            store.changeProductQuantity(value);
                            print(store.productQuantity.toString());
                          },
                        )
                    ],
                  ],
                );
              },
            ),
          ),
        ),
        floatingActionButton:
            AddProductButton(onPressed: () => print('floating')));
  }
}
