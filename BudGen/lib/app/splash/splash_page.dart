import 'package:BudGen/app/splash/splash_store.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SplashPage extends StatelessWidget {
  final splashStore = SplashStore();
  final colorPalette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    splashStore.initSplash();
    splashStore.pageContext = context;

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorPalette.getColorPrimary(),
        body: Observer(
          builder: (_) {
            return splashStore.splashScreen;
          },
        ),
      ),
    );
  }
}
