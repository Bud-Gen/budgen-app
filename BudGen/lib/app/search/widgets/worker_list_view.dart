import 'package:BudGen/domain/entities/worker.dart';
import 'package:BudGen/utils/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class WorkerListView extends StatelessWidget {
  final List<Worker> workers;
  final Function favoriteWorker;
  final Function addFunction;
  final Function increaseCounterFunction;
  final Function decreaseCounterFunction;
  final Map<String, int> workersCount;

  WorkerListView({
    this.workers,
    this.favoriteWorker,
    this.addFunction,
    this.decreaseCounterFunction,
    this.increaseCounterFunction,
    this.workersCount,
  });
  //TODO: refatorar isso aqui depois

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Observer(
          builder: (context) {
            return ListView.builder(
              itemCount: (workers ?? []).length,
              itemBuilder: (_, index) {
                return ProductTile(
                  isItem: false,
                  icon: Icons.person,
                  addFunction: addFunction,
                  decreaseCounterFunction: decreaseCounterFunction,
                  elementID: workers[index].id,
                  favoriteFunction: () => favoriteWorker(),
                  increaseCounterFunction: () => increaseCounterFunction(),
                  isFavoritePage: false,
                  itemsCount: null,
                  workersCount: workersCount,
                  price: "mudar",
                  product: workers[index],
                  showCounter: true,
                  showFavorite: false,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
