import 'package:budgen/app/home/widgets/product_list/worker_list/project_workers_tile.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:flutter/material.dart';

class ProjectWorkersList extends StatelessWidget {
  final List<Worker> workers;
  final Map<String, dynamic> qtdWorkers;
  final void Function(int, Worker) alterWorkerQuantity;

  const ProjectWorkersList({
    @required this.workers,
    @required this.qtdWorkers,
    @required this.alterWorkerQuantity,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Serviços",
            style: TextStyle(fontSize: 26),
          ),
          for (Worker worker in workers) ...[
            ProjectWorkersTile(
              worker: worker,
              qtd: qtdWorkers[worker.id]?.toString() ?? 0,
              alterValue: (
                int value,
                Worker worker,
              ) =>
                  alterWorkerQuantity(value, worker),
            ),
          ]
        ],
      ),
    );
  }
}
