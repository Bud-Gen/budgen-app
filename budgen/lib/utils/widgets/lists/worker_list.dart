import 'package:budgen/app/home/widgets/alerts/add_project_alert.dart';
import 'package:budgen/app/home/widgets/lists/tiles/worker_tile.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkerList extends StatelessWidget {
  final List<Worker>? workers;
  final bool hasProject;
  final Function addToProject;
  final Function favorite;
  final Function onChangedValue;

  const WorkerList({
    Key? key,
    required this.workers,
    required this.hasProject,
    required this.addToProject,
    required this.favorite,
    required this.onChangedValue,
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
              WorkerTile(
                worker: worker,
                hasProject: hasProject,
                addToProject: hasProject
                    ? () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return AddProjectAlert(
                              addToProject: () => addToProject(worker),
                              onChanged: (String value) =>
                                  onChangedValue(value),
                              name: worker.name!,
                              typeName: 'serviço',
                            );
                          },
                        );
                      }
                    : null,
                favorite: favorite,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
