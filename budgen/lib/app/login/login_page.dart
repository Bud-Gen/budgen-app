import 'package:budgen/app/import/import_spreadsheet_page.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'login_store.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginStore = LoginStore();
  final ColorPalette colorPalette = ColorPalette();

  late ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    disposer = reaction((_) => loginStore.loggedIn, (loggedIn) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => ImportSpreadsheetPage(),
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
      backgroundColor: colorPalette.secondCollor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorPalette.primaryCollor,
        title: Text('Budgen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon.png",
                scale: 3,
              ),
              SizedBox(height: 20),
              Text(
                "Bem-vindo ao Budgen!",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: colorPalette.primaryDarker,
                ),
              )
            ],
          ),
          SizedBox(height: 70),
          SignInButton(
            onPressed: () {
              loginStore.signInWithGoogle();
            },
          ),
          SizedBox(height: 150)
        ],
      ),
    );
  }
}
