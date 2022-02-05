import 'package:BudGen/app/login/login_page.dart';
import 'package:BudGen/app/tabs/tabs_page.dart';
import 'package:BudGen/utils/widgets/first_splash.dart';
import 'package:BudGen/utils/widgets/second_splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStore with _$SplashStore;

abstract class _SplashStore with Store {
  FirebaseAuth auth = FirebaseAuth.instance;
  String versionNumber = "1.18.2";

  BuildContext pageContext;

  @observable
  Widget splashScreen = FirstSplash();

  @action
  changeSplash() {
    splashScreen = SecondSplash(versionNumber: versionNumber);

    Future.delayed(Duration(milliseconds: 2000), () {
      navigateToFirstPage();
    });
  }

  @action
  initSplash() {
    Future.delayed(Duration(milliseconds: 1000), () {
      changeSplash();
    });
  }

  navigateToFirstPage() {
    navigateToLoginPage();

    if (auth.currentUser == null) {
      navigateToLoginPage();
    } else {
      navigateToHomePage();
    }
  }

  navigateToLoginPage() {
    Navigator.push(
      pageContext,
      MaterialPageRoute(
        builder: (pageContext) => LoginPage(),
      ),
    );
  }

  navigateToHomePage() {
    Navigator.push(
      pageContext,
      MaterialPageRoute(
        builder: (pageContext) => TabsPage(),
      ),
    );
  }
}
