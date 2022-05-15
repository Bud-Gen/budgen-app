import 'package:budgen/app/home/widgets/lists/home_trailing_buttons.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  final bool hasProject;
  final Function? addToProject;
  final Function favorite;

  const ItemTile({
    Key? key,
    required this.item,
    required this.hasProject,
    required this.addToProject,
    required this.favorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ColorPalette colorPalette = ColorPalette();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      child: Card(
        child: ListTile(
          leading: Icon(
            Icons.build_rounded,
            color: colorPalette.primaryCollor,
          ),
          title: Text(item.name!),
          subtitle: Text('R\$ ' + item.price!.toStringAsFixed(2)),
          trailing: HomeTrailingButtons(
            isFavorite: item.isFavorite!,
            hasProject: hasProject,
            addToProject: () => addToProject!(),
            favorite: () => favorite(item),
          ),
        ),
      ),
    );
  }
}
