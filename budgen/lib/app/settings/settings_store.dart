import 'package:budgen/app/login/login_page.dart';
import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/domain/usecases/google_auth/get_sign_out_google_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'settings_store.g.dart';

class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store {
  late BuildContext pageContext;
  GetSignOutGoogleAuth logout = GetSignOutGoogleAuth(new GoogleAuth());

  @observable
  String versionNumber = "";

  @action
  Future<void> onInit() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    versionNumber = packageInfo.version;
  }

  @action
  Future<void> onLogout() async {
    bool haveLogout = await logout.call();

    if (haveLogout) {
      Navigator.pushReplacement(
        pageContext,
        MaterialPageRoute(
          builder: (pageContext) => LoginPage(),
        ),
      );
    }
  }
}
