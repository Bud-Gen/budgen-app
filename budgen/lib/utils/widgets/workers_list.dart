import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/widgets/empty_text.dart';
import 'package:budgen/utils/widgets/worker_list_tile.dart';
import 'package:flutter/material.dart';

class WorkersList extends StatelessWidget {
  final List<Worker>? workers;
  final Function onPressedFavorite;
  final Function onPressedAdd;
  final bool existsProject;

  const WorkersList({
    required this.workers,
    required this.onPressedFavorite,
    required this.onPressedAdd,
    required this.existsProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    if (workers!.isEmpty) return EmptyText();

    return Container(
      height: screenSize.height,
      child: ListView.builder(
        itemCount: workers!.length,
        itemBuilder: (_, int index) {
          Worker worker = workers![index];

          return WorkerListTile(
            worker: worker,
            onPressedFavorite: () => onPressedFavorite(worker),
            onPressedAdd: () => onPressedAdd(worker),
            existsProject: existsProject,
          );
        },
      ),
    );
  }
}
