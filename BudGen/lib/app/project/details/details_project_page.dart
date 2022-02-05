import 'package:BudGen/app/project/details/widgets/card_email.dart';
import 'package:BudGen/app/project/details/widgets/card_total_price.dart';
import 'package:BudGen/app/project/details/widgets/details_project_body.dart';
import 'package:BudGen/app/project/details/widgets/details_project_header.dart';
import 'package:BudGen/app/project/details/widgets/details_project_item_option.dart';
import 'package:BudGen/app/project/details/widgets/details_project_worker_option.dart';
import 'package:BudGen/domain/entities/project.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class DetailsProjectPage extends StatelessWidget {
  final Project project;

  const DetailsProjectPage({
    @required this.project,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        //TODO fazer isso aqui funcionar
        title: Text(project.name),
        backgroundColor: ColorPalette().getColorPrimaryDarker(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            DetailsProjectHeader(),
            DetailsProjectBody(project: project),
            DetailsProjectItemOption(),
            DetailsProjectWorkerOption(),
            CardTotalPrice(
              totalPrice: '2002,00',
            ),
            CardEmail()
          ],
        ),
      ),
    );
  }
}
