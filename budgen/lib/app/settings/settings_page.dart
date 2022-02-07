import 'package:budgen/app/settings/settings_store.dart';
import 'package:budgen/app/settings/widgets/app_version_text.dart';
import 'package:budgen/app/settings/widgets/settings_options.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage() : super();

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();
    final store = SettingsStore();

    store.onInit();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorPalette.primaryCollor,
          title: Text("Configuração"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SettingsOptions(),
            Observer(
              builder: (_) => AppVersionText(
                version: store.versionNumber,
              ),
            )
          ],
        ));
  }
}
