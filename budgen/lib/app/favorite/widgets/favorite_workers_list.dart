import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/widgets/empty_text.dart';
import 'package:budgen/utils/widgets/worker_list_tile.dart';
import 'package:flutter/material.dart';

class FavoriteWorkersList extends StatelessWidget {
  final List<Worker> workers;
  final Function onPressedFavorite;
  final Function onPressedAdd;
  final bool existsProject;

  const FavoriteWorkersList({
    @required this.workers,
    this.onPressedFavorite,
    this.onPressedAdd,
    this.existsProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    if (workers.isEmpty) return EmptyText();

    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemCount: workers.length ?? 0,
          itemBuilder: (_, int index) {
            Worker worker = workers[index];

            return WorkerListTile(
              existsProject: existsProject,
              worker: worker,
              onPressedAdd: () => onPressedAdd(worker),
              onPressedFavorite: () => onPressedFavorite(worker),
            );
          },
        ),
      ),
    );
  }
}
