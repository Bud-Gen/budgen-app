import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class FinishedProductItemList extends StatelessWidget {
  final List<Item>? items;
  final Project? project;

  const FinishedProductItemList({
    this.items,
    this.project,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        if (items != null) ...[
          for (Item item in items!) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.build,color: colorPalette.primaryCollor,),
                  title: Text(item.name!),
                  subtitle: Text(item.price!.toStringAsFixed(2).toString()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Card(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(150),
                      ),
                        child: Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.13,
                          child: Center(
                            child: Text(project!.items![item.id].toString()),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ],
      ],
    );
  }
}
