import 'package:budgen/app/home/widgets/alerts/add_project_alert.dart';
import 'package:budgen/app/home/widgets/lists/tiles/item_tile.dart';
import 'package:budgen/app/project/simple_details_project/widgets/lists/tiles/item_tile_cart.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListCart extends StatelessWidget {
  final List<Item>? items;
  final bool hasProject;
  final Function addToProject;
  final Function favorite;
  final Function onChangedValue;

  const ItemListCart({
    Key? key,
    required this.items,
    required this.hasProject,
    required this.addToProject,
    required this.favorite,
    required this.onChangedValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (items == null || items!.isEmpty)
      return Container(
        child: Text('Sem itens'),
      );

    return Expanded(
      child: Scrollbar(
        thickness: 5,
        interactive: true,
        child: ListView(
          children: [
            for (final Item item in items!) ...[
              ItemTileCart(
                item: item,
                hasProject: hasProject,
                addToProject: hasProject
                    ? () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return AddProjectAlert(
                                addToProject: () => addToProject(item),
                                onChanged: (String value) =>
                                    onChangedValue(value),
                                name: item.name!,
                                typeName: 'item',
                              );
                            });
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
