import 'package:budgen/app/home/widgets/alerts/add_project_alert.dart';
import 'package:budgen/app/home/widgets/lists/tiles/item_tile.dart';
import 'package:budgen/app/project/simple_details_project/widgets/lists/tiles/item_tile_cart.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListCart extends StatelessWidget {
  final List<Item>? items;
  final Map<String, dynamic>? qtdItems;
  final void Function(int, Item) alterItemQuantity;
  final void Function(Item item) removeItem;

  const ItemListCart({
    Key? key,
    required this.items,
    required this.qtdItems, required this.alterItemQuantity, required this.removeItem,

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
              if(qtdItems![item.id].toString() != "null")
              ItemTileCart(
                item: item,
                qtd: qtdItems![item.id].toString(),
                alterValue: (int value, Item item) =>
                    alterItemQuantity(value, item),
                  removeItem: (Item item) => removeItem(item)
              ),
            ]
          ],
        ),
      ),
    );
  }
}
