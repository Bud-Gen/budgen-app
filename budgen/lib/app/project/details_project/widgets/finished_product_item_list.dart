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
          Center(
            child: Text(
              "Itens",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          for (Item item in items!) ...[
            Card(
              child: ListTile(
                leading: Icon(Icons.category_rounded),
                title: Text(item.name!),
                subtitle: Text(item.price!.toStringAsFixed(2).toString()),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Card(
                      child: Container(
                        color: colorPalette.background,
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
            )
          ],
        ],
      ],
    );
  }
}
