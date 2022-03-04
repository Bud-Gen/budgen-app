import 'package:budgen/app/product/widgets/details_product_body.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DetailsWorkerPage extends StatelessWidget {
  final Worker worker;
  const DetailsWorkerPage({
    required this.worker,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        title: Text("Detalhes de Serviço"),
      ),
      body: DetailsProductBody(
        product: worker,
      ),
    );
  }
}
