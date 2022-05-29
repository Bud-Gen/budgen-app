import 'package:budgen/app/home/widgets/alerts/add_project_alert.dart';
import 'package:budgen/app/home/widgets/lists/tiles/worker_tile.dart';
import 'package:budgen/app/project/simple_details_project/widgets/lists/tiles/worker_tile_cart.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkerListCart extends StatelessWidget {
  final List<Worker>? workers;
  final Map<String, dynamic>? qtdWorkers;
  final void Function(int, Worker) alterWorkerQuantity;
  final void Function(Worker) removeWorker;

  const WorkerListCart({
    Key? key,
    required this.workers, required this.qtdWorkers, required this.alterWorkerQuantity, required this.removeWorker,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (workers == null || workers!.isEmpty)
      return Container(
        child: Text('Sem itens'),
      );

    return Expanded(
      child: Scrollbar(
        thickness: 5,
        child: ListView(
          children: [
            for (final Worker worker in workers!) ...[
              if (qtdWorkers![worker.id].toString() != "null")
              WorkerTileCart(
                removeWorker: (Worker worker) => removeWorker(worker),
                worker: worker,
        qtd: qtdWorkers![worker.id].toString(),
        alterValue: (
            int value,
            Worker worker,
            ) =>
            alterWorkerQuantity(value, worker),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
