import 'package:budgen/app/product/items/details/details_item_page.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class ItemListTile extends StatelessWidget {
  final Item item;
  final Function onPressedFavorite;
  final Function onPressedAdd;
  final bool existsProject;

  const ItemListTile({
    required this.item,
    required this.onPressedFavorite,
    required this.onPressedAdd,
    required this.existsProject,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    return Card(
      child: ListTile(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsItemPage(item: item))),
        leading: Icon(Icons.category_rounded),
        title: Text(item.name ?? "s/n"),
        subtitle: Text(item.description ?? "s/n"),
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
                  color: item.isFavorite!
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
