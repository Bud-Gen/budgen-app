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
        backgroundColor: colorPalette.primaryCollor,
        title: Text("Favoritos"),
      ),
      body: Column(
        children: [
          Observer(
            builder: (_) => Column(
              children: [
                if (store.isLoading) CircularProgressIndicator(),
              ],
            ),
          ),
          Observer(builder: (_) {
            return TypeButton(
              showItems: store.showItems,
              onPressedShowItem: () => store.showItemsList(),
              onPressedShowWorker: () => store.showWorkersList(),
            );
          }),
          Observer(
            builder: (_) {
              if (store.showItems) {
                return ItemsList(
                  existsProject: store.currentProject != null,
                  onPressedAdd: (Item item) {
                    store.addItemToProject(item);
                    showSnack(
                      context: context,
                      content: "Item adicionado ao projeto",
                    );
                  },
                  items: store.items ?? [],
                  onPressedFavorite: (Item item) =>
                      store.changeFavoriteItem(item),
                );
              } else {
                return WorkersList(
                  existsProject: store.currentProject != null,
                  onPressedAdd: (Worker worker) {
                    store.addWorkerToProject(worker);
                    showSnack(
                        context: context,
                        content: "Serviço adicionado ao projeto");
                  },
                  workers: store.workers ?? [],
                  onPressedFavorite: (Worker worker) =>
                      store.changeFavoriteWorker(worker),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  void showSnack({
    @required BuildContext context,
    @required String content,
  }) {
    final snack = SnackBar(content: Text(content));
    Scaffold.of(context).showSnackBar(snack);
  }
}
