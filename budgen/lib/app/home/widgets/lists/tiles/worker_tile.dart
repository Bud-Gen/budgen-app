import 'package:budgen/app/home/widgets/lists/home_trailing_buttons.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class WorkerTile extends StatelessWidget {
  final Worker worker;
  final bool hasProject;
  final Function? addToProject;
  final Function favorite;

  const WorkerTile({
    Key? key,
    required this.worker,
    required this.hasProject,
    required this.addToProject,
    required this.favorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      child: Card(
        child: ListTile(
          leading: Icon(
            Icons.person,
            color: colorPalette.primaryCollor,
          ),
          title: Text(worker.name!),
          subtitle:
              Text('R\$ ' + worker.price!.toStringAsFixed(2) + ' a diária'),
          trailing: HomeTrailingButtons(
            isFavorite: worker.isFavorite!,
            hasProject: hasProject,
            addToProject: () => addToProject!(),
            favorite: () => favorite(worker),
          ),
        ),
      ),
    );
  }
}
