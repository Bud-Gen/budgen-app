import 'package:budgen/app/home/widgets/header/product_bottons.dart';
import 'package:budgen/app/home/widgets/lists/item_list.dart';
import 'package:budgen/app/home/widgets/lists/worker_list.dart';
import 'package:budgen/app/project/simple_details_project/simple_details_project_store.dart';
import 'package:budgen/app/project/simple_details_project/widgets/finish_project_button.dart';
import 'package:budgen/app/project/simple_details_project/widgets/header/discount_button.dart';
import 'package:budgen/app/project/simple_details_project/widgets/lists/item_list_cart.dart';
import 'package:budgen/app/project/simple_details_project/widgets/lists/worker_list_cart.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:budgen/app/home/widgets/add_product_button.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


class SimpleDetailsProjectPage extends StatefulWidget {
  const SimpleDetailsProjectPage();

  @override
  _SimpleDetailsProjectPageState createState() =>
      _SimpleDetailsProjectPageState();
}

class _SimpleDetailsProjectPageState extends State<SimpleDetailsProjectPage> {

  SimpleDetailsProjectStore store = new SimpleDetailsProjectStore();

  @override
  void initState() {
    store.onInit();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // final int qtdItems = project.items != null ? project.items!.length : 0;
    // final int qtdWorkers =
    //     project.workers != null ? project.workers!.length : 0;
    final ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery
        .of(context)
        .size;

    return Scaffold(
        body: SingleChildScrollView(
          child:Container(
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
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 200,
                        color: colorPalette.primaryCollor,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Row(
                              children: [
                                BackButton(color: Colors.white,),
                                Text("PROJETO",
                                  style: TextStyle(fontSize: 20, color: Colors.white),),
                              ],),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Container(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            store.currentProject?.name??"",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: screenSize.width * 0.04,
                              horizontal: screenSize.height * 0.012,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.addchart, color: Colors.white),
                                      SizedBox(width: screenSize.width * 0.02),
                                      Text(
                                        'R\$ ${store.currentProject?.price.toStringAsFixed(2)??"0"}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(width: screenSize.width * 0.02),
                                    ],
                                  ),
                                ),
                                DiscountButton(onTap: () {})
                              ],
                            ),
                          )
                        ],),),
                      ProductBottons(
                        showItems: store.showItems,
                        onPressedShowItem: () => store.viewItems(true),
                        onPressedShowWorker: () => store.viewItems(false),
                      ),
                      if (store.showItems)
                        ItemListCart(
                          items: store.items,
                          hasProject: store.currentProject != null,
                          addToProject: store.addItemToProject,
                          favorite: store.changeFavoriteItem,
                          onChangedValue: (String value) {
                            store.changeProductQuantity(value);
                          },
                        )
                      else
                        WorkerListCart(
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
                  ),
                );
              },
            ),
          )),
        floatingActionButton:
        FinishProjectButton(editEmailProject: store.editEmailProject,finishProject: store.finishProject)
    );
  }
}

