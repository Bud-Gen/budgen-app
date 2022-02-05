import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class SearchPageTopBar extends StatelessWidget {
  final ScreenSize screenSize = ScreenSize();
  final ColorPalette colorPalette = ColorPalette();
  final TextEditingController textController;
  final Function updateFilterText;

  SearchPageTopBar({
    this.textController,
    this.updateFilterText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.getHeightTopBar(),
      color: colorPalette.getColorPrimary(),
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "BUSCA",
                  style: TextStyle(
                    fontSize: screenSize.getTextSize20(),
                    color: colorPalette.getColorWhite(),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Container(
                  height: screenSize.getHeightDefaultButtom(),
                  width: screenSize.getPercentualWidthDefaultButtom(),
                  decoration: BoxDecoration(
                    color: colorPalette.getColorWhite(),
                    borderRadius: BorderRadius.circular(
                      screenSize.getBorderRadiusDefault(),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: screenSize.getPercentualWidthDefaultButtom() * 0.8,
                      child: Center(
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          cursorColor: colorPalette.getColorPrimary(),
                          style: TextStyle(
                            color: colorPalette.getColorBlack(),
                            fontSize: screenSize.getTextSize18(),
                          ),
                          onChanged: (value) => updateFilterText(value),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "PESQUISE UM ITEM",
                            hintStyle: TextStyle(
                              color: colorPalette.getColorDisabled(),
                              fontSize: screenSize.getTextSize18(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
