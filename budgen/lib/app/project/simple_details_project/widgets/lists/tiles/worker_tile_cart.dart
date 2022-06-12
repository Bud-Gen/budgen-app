import 'package:budgen/app/home/widgets/lists/home_trailing_buttons.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/slicer_button.dart';
import 'package:flutter/material.dart';

import '../project_trailing_buttons.dart';

class WorkerTileCart extends StatelessWidget {
  final Worker worker;
  final String qtd;
  final void Function(int, Worker) alterValue;
  final void Function(Worker) removeWorker;

  const WorkerTileCart({
    Key? key,
    required this.worker, required this.qtd, required this.alterValue, required this.removeWorker,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      child: Card(
        child: ListTile(
          leading: Icon(
            Icons.person,
            color: colorPalette.primaryCollor,
          ),
          title: Text(worker.name!),
          subtitle:
              Text('R\$ ' + worker.price!.toStringAsFixed(2) + ' a diária'),
          trailing: SlicerButton(
            alterValue: alterValue,
            product: worker,
            qtd: qtd,
            removeProduct: removeWorker,
          ),
          ),
        ),
    );
  }
}
