// import 'package:budgen/domain/entities/project.dart';
// import 'package:budgen/utils/style/color_pallete.dart';
// import 'package:budgen/utils/widgets/details_project/price_with_discount.dart';
// import 'package:budgen/utils/widgets/details_project/total_price_card.dart';
// import 'package:flutter/material.dart';

// import 'details_products.dart';

// class DetailsProject extends StatelessWidget {
//   final Project? project;
//   final Function addDiscount;
//   final Function addDiscountValue;

//   const DetailsProject({
//     this.project,
//     required this.addDiscount,
//     required this.addDiscountValue,
//   }) : super();

//   @override
//   Widget build(BuildContext context) {
//     ColorPalette colorPalette = ColorPalette();
//     final screenSize = MediaQuery.of(context).size;

//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Card(
//           child: Container(
//             width: screenSize.width,
//             height: screenSize.height * 0.15,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [colorPalette.secondCollor, colorPalette.primaryCollor],
//             )),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 if (project!.discount == 0)
//                   TotalPriceCard(
//                     price: project!.price.toStringAsFixed(2).toString(),
//                   ),
//                 if (project!.discount != 0)
//                   PriceWithDiscount(
//                     price: project!.price,
//                     discount: project!.discount,
//                   ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     DetailsProducts(
//                       project: project,
//                     ),
//                     if (project!.price != 0)
//                       // AddDiscountButton(
//                       //   project: project!,
//                       //   addDiscount: () => addDiscount(),
//                       //   addDiscountValue: (String value) =>
//                       //       addDiscountValue(value),
//                       // ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
