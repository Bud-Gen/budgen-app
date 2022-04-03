import 'package:budgen/app/search/search_store.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/items_list.dart';
import 'package:budgen/utils/widgets/type_button.dart';
import 'package:budgen/utils/widgets/workers_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SearchPage extends StatelessWidget {
  const SearchPage() : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    SearchStore store = SearchStore();

    store.onInit();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorPalette.primaryCollor,
        title: Text("Pesquisa"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              autocorrect: false,
              maxLines: 1,
              onChanged: store.search,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                labelText: "",
                hintText: "",
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
            Observer(
              builder: (_) {
                return TypeButton(
                  showItems: store.showItems,
                  onPressedShowItem: () => store.showItemsList(),
                  onPressedShowWorker: () => store.showWorkersList(),
                );
              },
            ),
            Observer(builder: (_) {
              if (store.showItems) {
                return ItemsList(
                  items: store.items,
                  onPressedFavorite: (Item item) =>
                      store.changeFavoriteItem(item),
                  onPressedAdd: (Item item) {
                    store.addItemToProject(item);
                    showSnack(
                      context: context,
                      content: "Item adicionado ao projeto",
                    );
                  },
                  existsProject: store.existsProject,
                );
              } else {
                return WorkersList(
                  workers: store.workers,
                  onPressedFavorite: (Worker worker) =>
                      store.changeFavoriteWorker(worker),
                  onPressedAdd: (Worker worker) {
                    store.addWorkerToProject(worker);
                    showSnack(
                      context: context,
                      content: "Serviço adicionado ao projeto",
                    );
                  },
                  existsProject: store.existsProject,
                );
              }
            })
          ],
        ),
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
