import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class FinishedProductWorkerList extends StatelessWidget {
  final List<Worker>? workers;
  final Project? project;

  const FinishedProductWorkerList({
    this.project,
    this.workers,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        if (workers != null) ...[
          for (Worker worker in workers!) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.person,color: colorPalette.primaryCollor,),
                  title: Text(worker.name!),
                  subtitle: Text(worker.price!.toStringAsFixed(2).toString()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.13,
                          child: Center(
                            child: Text(project!.workers![worker.id].toString()),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]
        ]
      ],
    );
  }
}
