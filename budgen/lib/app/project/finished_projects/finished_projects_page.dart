import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FinishedProjectsPage extends StatelessWidget {
  const FinishedProjectsPage() : super();

  @override
  Widget build(BuildContext context) {
    ColorPalette colorPalette = ColorPalette();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        title: Text("Lista de Projetos"),
      ),
      body: Column(
        children: [
          Observer(builder: (_) {
            return Container(
              child: Center(
                child: Text("centro"),
              ),
            );
          }),
        ],
      ),
    );
  }
}
