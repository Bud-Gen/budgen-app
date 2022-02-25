import 'package:budgen/app/home/widgets/empty_project_body.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/details_project/details_products.dart';
import 'package:budgen/utils/widgets/details_project/price_with_discount.dart';
import 'package:budgen/utils/widgets/details_project/total_price_card.dart';
import 'package:flutter/material.dart';

class DetailsFinishedProjectHeader extends StatelessWidget {
  final Project? project;

  const DetailsFinishedProjectHeader({
    required this.project,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;
    if (project == null) return EmptyProjectBody();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: colorPalette.secondCollor,
          child: Container(
            width: screenSize.width,
            height: screenSize.height * 0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (project?.discount == 0)
                  TotalPriceCard(
                    price: project!.price.toStringAsFixed(2).toString(),
                  ),
                if (project!.discount != 0)
                  PriceWithDiscount(
                    price: project!.price,
                    discount: project!.discount,
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DetailsProducts(
                      itemsQtd: project!.items!.length,
                      workersQtd: project!.workers!.length,
                    ),
                    Card(
                      color: colorPalette.background,
                      child: Container(
                        height: screenSize.height * 0.06,
                        width: screenSize.width * 0.45,
                        child: Column(
                          children: [
                            Text(
                              "Email enviado",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: colorPalette.primaryDarker,
                              ),
                            ),
                            SizedBox(height: screenSize.height * 0.005),
                            Text(
                              project!.email,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
