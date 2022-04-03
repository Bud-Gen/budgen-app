import 'package:budgen/app/settings/widgets/app_version_text.dart';
import 'package:budgen/app/splash/splash_store.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SplashPage extends StatefulWidget {
  const SplashPage();

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final store = SplashStore();
  final colorPalette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    store.initSplash();
    store.pageContext = context;

    return Scaffold(
      backgroundColor: colorPalette.primaryCollor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon.png",
              scale: 3,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "BudGen",
              style: TextStyle(
                  color: ColorPalette().background,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            Observer(
              builder: (_) => AppVersionText(
                version: store.versionNumber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
