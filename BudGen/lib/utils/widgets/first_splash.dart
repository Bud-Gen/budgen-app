import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstSplash extends StatefulWidget {
  @override
  _FirstSplashState createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 150,
        child: SvgPicture.asset("images/logo.svg"),
      ),
    );
  }
}
