import 'package:budgen/app/splash/splash_store.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage();

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final splashStore = SplashStore();
  final colorPalette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    splashStore.initSplash();
    splashStore.pageContext = context;

    return SafeArea(
      child: Scaffold(
          backgroundColor: colorPalette.primaryCollor,
          body: Center(
            child: Container(
              height: 150,
              width: 150,
              child: Column(
                children: [
                  Icon(Icons.assignment_outlined,color: colorPalette.background,size: 80,),
                  SizedBox(height: 10,),
                  Text("Budgen",style: TextStyle(color: ColorPalette().background,fontSize: 30,fontWeight: FontWeight.w800))
                ],
              ),
            ),
          )
      ),
    );
  }
}
