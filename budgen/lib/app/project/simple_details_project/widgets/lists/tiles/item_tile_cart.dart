import 'package:budgen/app/home/widgets/lists/home_trailing_buttons.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/slicer_button.dart';
import 'package:flutter/material.dart';

import '../project_trailing_buttons.dart';

class ItemTileCart extends StatelessWidget {
  final Item item;

  final String qtd;
  final void Function(int, Item) alterValue;
  final void Function(Item) removeItem;

  const ItemTileCart({
    Key? key,
    required this.item, required this.qtd, required this.alterValue, required this.removeItem,
  });

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
          trailing: SlicerButton(
            alterValue: alterValue,
            product: item,
            qtd: qtd,
            removeProduct: removeItem,
          ),
        ),
      ),
    );
  }
}
