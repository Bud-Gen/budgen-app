import 'package:flutter/material.dart';

class AppVersionText extends StatelessWidget {
  final String version;
  const AppVersionText({
    required this.version,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Text("versão $version"),
    );
  }
}
