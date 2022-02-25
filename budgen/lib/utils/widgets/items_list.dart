import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/utils/widgets/empty_text.dart';
import 'package:budgen/utils/widgets/item_list_tile.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  final List<Item> items;
  final Function onPressedFavorite;
  final Function onPressedAdd;
  final bool existsProject;

  const ItemsList({
    required this.items,
    required this.onPressedFavorite,
    required this.onPressedAdd,
    required this.existsProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return EmptyText();

    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (_, int index) {
            Item item = items[index];

            return ItemListTile(
              item: item,
              existsProject: existsProject,
              onPressedAdd: () => onPressedAdd(item),
              onPressedFavorite: () => onPressedFavorite(item),
            );
          },
        ),
      ),
    );
  }
}
