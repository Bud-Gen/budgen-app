import 'package:budgen/app/home/widgets/product_list/item_list/project_items_tile.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:flutter/material.dart';

class ProjectItemsList extends StatelessWidget {
  final List<Item> items;
  final Map<String, dynamic> qtdItems;
  final void Function(int, Item) alterItemQuantity;
  final void Function(Item item) removeItem;

  const ProjectItemsList({
    required this.items,
    required this.qtdItems,
    required this.alterItemQuantity,
    required this.removeItem,
  }) : super();

  @override
  Widget build(BuildContext context) {
    if (items == null || items.isEmpty) return SizedBox(width: 0, height: 0);

    return Container(
      child: Column(
        children: [
          Text(
            "Itens",
            style: TextStyle(fontSize: 26),
          ),
          for (Item item in items) ...[
            ProjectItemsTile(
              removeItem: (Item item) => removeItem(item),
              item: item,
              qtd: qtdItems[item.id].toString(),
              alterValue: (int value, Item item) =>
                  alterItemQuantity(value, item),
            ),
          ]
        ],
      ),
    );
  }
}
