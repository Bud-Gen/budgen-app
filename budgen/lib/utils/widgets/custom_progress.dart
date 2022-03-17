import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class CustomProgress {
  static Future<void> call(
      {required BuildContext context, String text = "Carregando"}) async {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(color: ColorPalette().primaryCollor,),
          Container(margin: EdgeInsets.only(left: 9), child: Text(text)),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
