import 'package:budgen/app/settings/widgets/avatar.dart';
import 'package:budgen/app/settings/widgets/settings_tile.dart';
import 'package:flutter/material.dart';

class SettingsOptions extends StatelessWidget {
  const SettingsOptions() : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Avatar(),
        SettingsTile(
          iconData: Icons.add_business,
          title: "Projetos Finalizados",
          onTap: () => print("pagina de projetos finalizados"),
        ),
        SettingsTile(
          iconData: Icons.add_to_drive,
          title: "Tabela de produtos",
          onTap: () => print("pagina de edição de produtos"),
        ),
        SettingsTile(
          iconData: Icons.alternate_email_sharp,
          title: "Sobre o app",
          onTap: () => print("Pagina sobre o app"),
        )
      ],
    );
  }
}