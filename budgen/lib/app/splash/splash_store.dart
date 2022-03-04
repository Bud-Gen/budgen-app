import 'package:budgen/app/login/login_page.dart';
import 'package:budgen/app/tabs/tabs_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStore with _$SplashStore;

abstract class _SplashStore with Store {
  FirebaseAuth auth = FirebaseAuth.instance;
  late BuildContext pageContext;

  @action
  initSplash() {
    Future.delayed(Duration(milliseconds: 2000), () {
      navigateToFirstPage();
    });
  }

  void navigateToFirstPage() {
    if (auth.currentUser == null) {
      navigateToLoginPage();
    } else {
      navigateToHomePage();
    }
  }

  void navigateToLoginPage() {
    Navigator.of(pageContext).pushReplacement(
      MaterialPageRoute(
        builder: (pageContext) => LoginPage(),
      ),
    );
  }

  void navigateToHomePage() {
    Navigator.of(pageContext).pushReplacement(
      MaterialPageRoute(
        builder: (pageContext) => TabsPage(),
      ),
    );
  }
}