import 'package:budgen/app/product/widgets/details_content.dart';
import 'package:budgen/app/product/widgets/details_title_card.dart';
import 'package:budgen/domain/entities/product.dart';
import 'package:budgen/utils/widgets/product_image.dart';
import 'package:flutter/material.dart';

class DetailsProductBody extends StatelessWidget {
  final Product product;

  const DetailsProductBody({
    @required this.product,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        ProductImage(
          imageUrl: product.imageUrl,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    height: screenSize.height * 0.09,
                    width: screenSize.width * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailsTitleCard(
                          title: 'Nome',
                        ),
                        DetailsContent(
                          content: product.name,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    height: screenSize.height * 0.09,
                    width: screenSize.width * 0.43,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailsTitleCard(
                          title: 'Preço',
                        ),
                        DetailsContent(
                          content: product.price.toStringAsFixed(2),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.02,
                ),
                Card(
                  child: Container(
                    height: screenSize.height * 0.09,
                    width: screenSize.width * 0.43,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailsTitleCard(
                          title: 'Tipo',
                        ),
                        DetailsContent(
                          content: product?.path ?? "",
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                height: screenSize.height * 0.24,
                width: screenSize.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailsTitleCard(
                      title: 'Descrição',
                    ),
                    DetailsContent(
                      content: product.description,
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
