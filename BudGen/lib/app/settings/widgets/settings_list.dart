import 'package:BudGen/app/settings/widgets/settings_options.dart';
import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  const SettingsList() : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 35,
        horizontal: 20,
      ),
      child: Column(
        children: [
          SettingsOption(
              icon: Icons.analytics_outlined,
              title: 'Projetos Finalizados',
              onTap: () => print("MUDAR ISSO AQUI")),
          SettingsOption(
            icon: Icons.add_to_drive,
            title: 'Tabela de Produtos',
            onTap: () => print('tabela'),
          ),
          SettingsOption(
            icon: Icons.info_outline,
            title: 'Sobre o APP',
            onTap: () => print('sobre'),
          )
        ],
      ),
    );
  }
}
