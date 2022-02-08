import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/utils/widgets/empty_text.dart';
import 'package:budgen/utils/widgets/item_list_tile.dart';
import 'package:flutter/material.dart';

class FavoriteItemsList extends StatelessWidget {
  final List<Item> items;
  final Function onPressedFavorite;
  final Function onPressedAdd;
  final bool existsProject;

  const FavoriteItemsList({
    @required this.items,
    this.onPressedFavorite,
    this.onPressedAdd,
    this.existsProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return EmptyText();

    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemCount: items.length ?? 0,
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
