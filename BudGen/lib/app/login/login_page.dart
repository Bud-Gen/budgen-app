import 'package:BudGen/app/import/import_spreadsheet_page.dart';
import 'package:BudGen/app/login/login_store.dart';
import 'package:BudGen/app/tabs/tabs_page.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:BudGen/utils/widgets/sign_in_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobx/mobx.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginStore = LoginStore();
  final ColorPalette colorPalette = ColorPalette();
  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    disposer = reaction((_) => loginStore.loggedIn, (loggedIn) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => ImportSpreadSheetPage(),
      ));
    });
  }

  @override
  void dispose() {
    //needs before super.dispose()
    disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.getColorPrimary(),
      body: Column(
        children: [
          SizedBox(height: 150),
          Center(
            child: Container(
              height: 200,
              width: 200,
              child: SvgPicture.asset("images/splash.svg"),
            ),
          ),
          SizedBox(height: 50),
          SignInButton(
            onPressed: () {
              // loginStore.signInWithGoogle();
              //TODO:inserir novamente após reajuste do back
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TabsPage(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
