import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class WorkerListTile extends StatelessWidget {
  final Worker worker;
  final Function onPressedFavorite;
  final Function onPressedAdd;
  final bool existsProject;

  const WorkerListTile({
    @required this.worker,
    @required this.onPressedFavorite,
    this.onPressedAdd,
    this.existsProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();

    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(worker?.name ?? "s/n"),
        subtitle: Text(worker?.description ?? "s/n"),
        trailing: Container(
          width: 100,
          height: 100,
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.add_circle,
                  color:
                      existsProject ? colorPalette.primaryCollor : Colors.grey,
                ),
                onPressed: () => existsProject ? onPressedAdd() : null,
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: worker.isFavorite
                      ? colorPalette.primaryCollor
                      : Colors.grey,
                ),
                onPressed: () => onPressedFavorite(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
