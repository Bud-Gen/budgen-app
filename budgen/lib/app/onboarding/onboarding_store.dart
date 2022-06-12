import 'package:budgen/app/import/import_spreadsheet_page.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'onboarding_store.g.dart';

class OnboardingStore = _OnboardingStore with _$OnboardingStore;

abstract class _OnboardingStore with Store {
  late BuildContext pageContext;

  @action
  void navigateToImportSpreadsheetPage() {
    Navigator.of(pageContext).pushReplacement(
      MaterialPageRoute(
        builder: (pageContext) => ImportSpreadsheetPage(),
      ),
    );
  }
}
