import 'package:budgen/domain/entities/worker.dart';
import 'package:flutter/material.dart';

class WorkerListTile extends StatelessWidget {
  final Worker worker;
  final Function onPressed;

  const WorkerListTile({
    @required this.worker,
    @required this.onPressed,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(worker?.name ?? "s/n"),
        subtitle: Text(worker?.description ?? "s/n"),
        trailing: IconButton(
          icon: Icon(
            Icons.favorite,
            color: worker.isFavorite ? Colors.red : Colors.grey,
          ),
          onPressed: () => onPressed(),
        ),
      ),
    );
  }
}
