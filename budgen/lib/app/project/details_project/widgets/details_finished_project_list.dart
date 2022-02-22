import 'package:budgen/app/project/details_project/widgets/finished_product_item_list.dart';
import 'package:budgen/app/project/details_project/widgets/finished_product_worker_list.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:flutter/material.dart';

class DetailsFinishedProjectList extends StatelessWidget {
  final List<Item> items;
  final List<Worker> workers;
  final Project project;

  const DetailsFinishedProjectList({
    @required this.project,
    @required this.items,
    @required this.workers,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          FinishedProductItemList(
            project: project,
            items: items,
          ),
          FinishedProductWorkerList(
            project: project,
            workers: workers,
          )
        ],
      ),
    );
  }
}
