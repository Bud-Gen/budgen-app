import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class EmptyProductsBody extends StatelessWidget {
  final Function downloadSpreadsheet;
  final Function uploadSpreadsheet;

  const EmptyProductsBody({
    required this.downloadSpreadsheet,
    required this.uploadSpreadsheet,
  }) : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: screenSize.height * 0.15),
      child: Center(
        child: Card(
          child: Container(
            height: screenSize.height * 0.4,
            width: screenSize.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.assignment_late,
                  color: colorPalette.primaryCollor,
                  size: 100,
                ),
                Text(
                  "Não há produtos cadastrados",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 0, bottom: screenSize.height * 0.02),
                  child: Text(
                    "Adicione um novo produto clicando no botão abaixo ou através da planilha",
                    textAlign: TextAlign.center,
                  ),
                ),
                FloatingActionButton.extended(
                  backgroundColor: colorPalette.primaryCollor,
                  onPressed: () => uploadSpreadsheet(),
                  label: Text('Adicionar Planilha'),
                ),
                TextButton(
                  onPressed: () => downloadSpreadsheet(),
                  child: Text('baixar modelo de planilha'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
