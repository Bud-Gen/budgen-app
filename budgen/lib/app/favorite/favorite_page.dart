import 'package:budgen/app/favorite/favorite_store.dart';
import 'package:budgen/app/favorite/widgets/favorite_workers_list.dart';
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
            if (store.workers != null)
              return FavoriteWorkersList(workers: store.workers);
            else
              return Text("vazio");
          }),
        ],
      ),
    );
  }
}
