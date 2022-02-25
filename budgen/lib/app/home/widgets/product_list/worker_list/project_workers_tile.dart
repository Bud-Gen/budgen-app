import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/widgets/slicer_button.dart';
import 'package:flutter/material.dart';

class ProjectWorkersTile extends StatelessWidget {
  final Worker worker;
  final String qtd;
  final void Function(int, Worker) alterValue;
  final void Function(Worker) removeWorker;

  const ProjectWorkersTile({
    required this.worker,
    required this.qtd,
    required this.alterValue,
    required this.removeWorker,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(worker.name!),
        subtitle: Text(worker.description!),
        trailing: SlicerButton(
          alterValue: alterValue,
          product: worker,
          qtd: qtd,
          removeProduct: removeWorker,
        ),
      ),
    );
  }
}
