import 'package:BudGen/app/home/home_store.dart';
import 'package:BudGen/app/login/login_page.dart';
import 'package:BudGen/app/settings/widgets/logout_button.dart';
import 'package:BudGen/app/settings/widgets/settings_header.dart';
import 'package:BudGen/data/remote/google_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SettingsPage extends StatelessWidget {
  final homeStore = HomeStore(); //TODO: MAANOO???
  final GoogleAuth googleAuth = new GoogleAuth();

  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => SettingsPage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SettingsHeader(),
              LogoutButton(onPressed: () {
                googleAuth.signOutFromGoogle();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
              })
            ],
          ),
        ),
      ),
    );
  }
}

