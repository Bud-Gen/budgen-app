import 'package:budgen/app/import/import_spreadsheet_page.dart';
import 'package:budgen/app/project/finished_projects/finished_projects_page.dart';
import 'package:budgen/app/settings/widgets/avatar.dart';
import 'package:budgen/app/settings/widgets/settings_tile.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SettingsOptions extends StatelessWidget {
  const SettingsOptions({required this.onLogout});

  final Function onLogout;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Avatar(),
        SettingsTile(
          iconData: Icons.add_business,
          title: "Projetos Finalizados",
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => FinishedProjectsPage())),
        ),
        SettingsTile(
          iconData: Icons.add_to_drive,
          title: "Tabela de produtos",
          onTap: () => print("pagina de edição de produtos"),
        ),
        SettingsTile(
          iconData: MdiIcons.googleSpreadsheet,
          title: "Importar planilha",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ImportSpreadsheetPage(
                        loadSpreadSheet: true,
                      ))),
        ),
        SettingsTile(
          iconData: Icons.alternate_email_sharp,
          title: "Sobre o app",
          onTap: () => print("Pagina sobre o app"),
        ),
        SettingsTile(
          iconData: Icons.logout,
          title: "Sair da conta",
          onTap: onLogout,
        ),
      ],
    );
  }
}
