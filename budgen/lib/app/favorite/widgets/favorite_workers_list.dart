import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/widgets/worker_list_tile.dart';
import 'package:flutter/material.dart';

class FavoriteWorkersList extends StatelessWidget {
  final List<Worker> workers;
  final Function onPressed;

  const FavoriteWorkersList({
    @required this.workers,
    this.onPressed,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemCount: workers.length ?? 0,
          itemBuilder: (_, int index) {
            Worker worker = workers[index];

            return WorkerListTile(
              worker: worker,
              onPressed: () => onPressed(),
            );
          },
        ),
      ),
    );
  }
}
