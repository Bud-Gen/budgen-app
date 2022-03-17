import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  static Future<void> call(BuildContext context, String title,
      String details, final Function onPressed) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(title),
            content: new Text(details),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Fechar"),
                onPressed: () {
                  onPressed();
                },
              ),
            ],
          );
        });
  }
}
