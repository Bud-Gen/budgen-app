import 'package:budgen/app/favorite/favorite_store.dart';
import 'package:budgen/utils/widgets/items_list.dart';
import 'package:budgen/utils/widgets/workers_list.dart';
import 'package:budgen/utils/widgets/type_button.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage() : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    FavoriteStore store = FavoriteStore();
    store.onInit();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorPalette.primaryCollor,
        title: Text("Favoritos"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
    @required BuildContext? context,
    @required String? content,
  }) {
    final snack = SnackBar(
      content: Text(content ?? ""),
      duration: Duration(milliseconds: 500),
    );
    Scaffold.of(context!).showSnackBar(snack);
  }
}
