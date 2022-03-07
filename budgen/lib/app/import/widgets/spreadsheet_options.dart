import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/action_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SpreadsheetOptions extends StatelessWidget {
  const SpreadsheetOptions(
      {required this.onPressedYes, required this.onPressedAfter})
      : super();

  final Function onPressedYes;
  final Function onPressedAfter;

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: colorPalette.disabled,
      height: screenSize.height,
      width: screenSize.width,
      child: Center(
        child: Card(
            child: Container(
          height: screenSize.height * 0.4,
          width: screenSize.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                MdiIcons.googleSpreadsheet,
                color: colorPalette.primaryCollor,
                size: 100,
              ),
              SizedBox(height: screenSize.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Text(
                  "Deseja importar planilha com produtos e serviços?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              ActionButton(
                  text: "Sim",
                  color: ColorPalette().primaryCollor,
                  onPressed: () {
                    onPressedYes();
                  }),
              ActionButton(
                  text: "Depois",
                  onPressed: () {
                    onPressedAfter();
                  })
            ],
          ),
        )),
      ),
    );
  }
}
