import 'package:budgen/app/home/widgets/empty_project_body.dart';
import 'package:budgen/app/home/widgets/product_list/empty_products_advice.dart';
import 'package:budgen/app/home/widgets/product_list/item_list/project_items_list.dart';
import 'package:budgen/app/home/widgets/product_list/worker_list/project_workers_list.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  final Project? project;
  final List<Item>? items;
  final List<Worker>? workers;
  final void Function(int, Item) alterItemQuantity;
  final void Function(Item item) removeItem;
  final void Function(int, Worker) alterWorkerQuantity;
  final void Function(Worker) removeWorker;

  const HomeBody({
    required this.project,
    required this.items,
    required this.alterItemQuantity,
    required this.removeItem,
    required this.workers,
    required this.alterWorkerQuantity,
    required this.removeWorker,
  }) : super();

  @override
  Widget build(BuildContext context) {
    if (project == null) return EmptyProjectBody();
    if (project!.items == null && project!.workers == null)
      return EmptyProductsAdvice();
    return Container(
      height: 1000,
      child: ListView(
        children: [
          ProjectItemsList(
            items: items,
            qtdItems: project?.items,
            alterItemQuantity: (int value, Item item) =>
                alterItemQuantity(value, item),
            removeItem: (Item item) => removeItem(item),
          ),
          ProjectWorkersList(
            workers: workers,
            qtdWorkers: project?.workers,
            alterWorkerQuantity: alterWorkerQuantity,
            removeWorker: removeWorker,
          ),
        ],
      ),
    );
  }
}
