import 'package:budgen/app/home/widgets/add_discount/add_discount_button.dart';
import 'package:budgen/app/home/widgets/details_project/details_products.dart';
import 'package:budgen/app/home/widgets/empty_project_body.dart';
import 'package:budgen/app/home/widgets/details_project/price_with_discount.dart';
import 'package:budgen/app/home/widgets/details_project/total_price_card.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DetailsProject extends StatelessWidget {
  final Project project;
  final Function addDiscount;
  final Function addDiscountValue;

  const DetailsProject({
    @required this.project,
    @required this.addDiscount,
    @required this.addDiscountValue,
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
                  if (project.discount == 0)
                    TotalPriceCard(
                      price: project.price.toStringAsFixed(2).toString(),
                    ),
                  if (project.discount != 0)
                    PriceWithDiscount(
                      price: project.price,
                      discount: project.discount,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DetailsProducts(
                        itemsQtd: project.items?.length ?? 0,
                        workersQtd: project.workers?.length ?? 0,
                      ),
                      if (project.price != 0)
                        AddDiscountButton(
                          project: project,
                          addDiscount: () => addDiscount(),
                          addDiscountValue: (String value) =>
                              addDiscountValue(value),
                        )
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}
