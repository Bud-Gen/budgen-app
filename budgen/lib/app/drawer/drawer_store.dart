import 'package:budgen/app/import/import_spreadsheet_page.dart';
import 'package:budgen/app/login/login_page.dart';
import 'package:budgen/app/project/finished_projects/finished_projects_page.dart';
import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/domain/entities/user.dart';
import 'package:budgen/domain/usecases/google_auth/get_google_user.dart';
import 'package:budgen/domain/usecases/google_auth/get_sign_out_google_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'drawer_store.g.dart';

class NavigationDrawerStore = _NavigationDrawerStore with _$NavigationDrawerStore;

abstract class _NavigationDrawerStore with Store {

  late BuildContext pageContext;

  GetSignOutGoogleAuth logout = GetSignOutGoogleAuth(new GoogleAuth());

  GetGoogleUser getGoogleUser = GetGoogleUser(new GoogleAuth());

  @observable
  UserCredentials? user;

  @observable
  bool showItems = true;

  @observable
  bool isLoading = false;

  Future<void> onInit() async {
    isLoading = true;
    await _sync();

    isLoading = false;
  }

  @action
  void navigateToFinishProjects() {
    Navigator.of(pageContext).push(
      MaterialPageRoute(
        builder: (pageContext) => FinishedProjectsPage(),
      ),
    );
  }

  @action
  void navigateToImportSpreadsheetPage() {
    Navigator.of(pageContext).push(
      MaterialPageRoute(
        builder: (pageContext) => ImportSpreadsheetPage(loadSpreadSheet: true),
      ),
    );
  }

  @action
  void navigateToAboutApp() {
    Navigator.of(pageContext).push(
      MaterialPageRoute(
        builder: (pageContext) => FinishedProjectsPage(),
      ),
    );
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

  @action
  Future<void> _sync() async {
    user = await getGoogleUser.call();
  }
}