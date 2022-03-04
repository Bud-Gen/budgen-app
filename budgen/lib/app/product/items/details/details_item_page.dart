import 'package:budgen/app/product/widgets/details_product_body.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DetailsItemPage extends StatelessWidget {
  final Item item;

  const DetailsItemPage({
    required this.item,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        title: Text("Detalhes do item"),
      ),
      body: DetailsProductBody(product: item),
    );
  }
}
