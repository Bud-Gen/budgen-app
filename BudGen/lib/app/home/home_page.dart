import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeStore = HomeStore();
  final colorPalette = ColorPalette();
  final screenSize = ScreenSize();

  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => HomePage(),
      );

  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    //needs before super.dispose()
    disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    homeStore.onInit();

    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    screenSize.initScreenSize(screenHeight, screenWidth);

    return Scaffold(
      backgroundColor: colorPalette.getColorBackground(),
      body: Container(
        color: Colors.red,
        child: Text("mudar isso aqui"),
      ),
    );
  }
}
