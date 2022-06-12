import 'package:budgen/utils/style/color_pallete.dart';
import 'package:budgen/utils/widgets/navigation_drawer/navigation_drawer_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavigationDrawer extends StatelessWidget {
  final ColorPalette colorPalette = ColorPalette();
  final NavigationDrawerStore store = NavigationDrawerStore();

  @override
  Widget build(BuildContext context) {
    store.pageContext = context;
    store.onInit();

    return Drawer(
      child: ListView(
        children: [
          Observer(builder: (_) {
            if (store.isLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: colorPalette.primaryCollor,
                ),
              );
            }
            return UserAccountsDrawerHeader(
              accountName: Text(store.user?.name ?? ""),
              accountEmail: Text(store.user?.email ?? ""),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(store.user?.profileImage ??
                    "https://appmaking.co/wp-content/uploads/2021/08/appmaking-logo-colored.png"),
              ),
              decoration: BoxDecoration(color: colorPalette.primaryCollor),
            );
          }),
          ListTile(
            leading: Icon(MdiIcons.noteCheck),
            title: Text("PROJETOS FINALIZADOS",
                style: TextStyle(color: colorPalette.primaryCollor)),
            onTap: store.navigateToFinishProjects,
          ),
          ListTile(
            leading: Icon(MdiIcons.googleSpreadsheet),
            title: Text("IMPORTAR PLANILHA",
                style: TextStyle(color: colorPalette.primaryCollor)),
            onTap: store.navigateToImportSpreadsheetPage,
          ),
          ListTile(
            leading: Icon(MdiIcons.information),
            title: Text("SOBRE O APP",
                style: TextStyle(color: colorPalette.primaryCollor)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(MdiIcons.logout),
            title: Text("SAIR DO APP",
                style: TextStyle(color: colorPalette.primaryCollor)),
            onTap: store.onLogout,
          )
        ],
      ),
    );
  }
}
