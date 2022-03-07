import 'package:budgen/app/import/import_spreadsheet_page.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      backgroundColor: colorPalette.background,
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        title: Text('Budgen'),
      ),
      body: Column(
        children: [
          SizedBox(height: 150),
          SizedBox(height: 50),
          SignInButton(
            onPressed: () {
              loginStore.signInWithGoogle();
            },
          ),
        ],
      ),
    );
  }
}
