import 'package:budgen/app/home/widgets/product_list/item_list/project_items_tile.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:flutter/material.dart';

class ProjectItemsList extends StatelessWidget {
  final List<Item> items;
  final Map<String, dynamic> qtdItems;
  final void Function(int, Item) alterItemQuantity;

  const ProjectItemsList({
    @required this.items,
    @required this.qtdItems,
    @required this.alterItemQuantity,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Itens",
            style: TextStyle(fontSize: 26),
          ),
          for (Item item in items) ...[
            ProjectItemsTile(
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
