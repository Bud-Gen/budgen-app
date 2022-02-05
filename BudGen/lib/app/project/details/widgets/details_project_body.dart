import 'package:BudGen/app/project/details/widgets/card_discount.dart';
import 'package:BudGen/app/project/details/widgets/card_price.dart';
import 'package:BudGen/domain/entities/project.dart';
import 'package:flutter/material.dart';

class DetailsProjectBody extends StatelessWidget {
  final Project project;

  DetailsProjectBody({
    @required this.project,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CardPrice(project.price.toStringAsFixed(2)),
        CardDiscount(project.discount.toStringAsFixed(2)),
      ],
    );
  }
}
