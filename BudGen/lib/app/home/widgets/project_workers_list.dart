import 'package:BudGen/domain/entities/project.dart';
import 'package:BudGen/domain/entities/worker.dart';
import 'package:BudGen/utils/widgets/home_item_tile/home_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProjectWorkersList extends StatelessWidget {
  final List<Worker> workers;
  final Project project;
  final Function changeWorkerQuantity;
  final Function deleteWorker;

  const ProjectWorkersList({
    @required this.workers,
    @required this.project,
    @required this.changeWorkerQuantity,
    @required this.deleteWorker,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(
        builder: (context) => ListView.builder(
          itemCount: workers.length,
          itemBuilder: (_, i) => HomeProductTile(
            icon: Icons.build,
            product: workers[i],
            qtdProduct: project.workers[workers[i].id],
            counter: changeWorkerQuantity,
            remover: deleteWorker,
          ),
        ),
      ),
    );

    // return
  }
}
