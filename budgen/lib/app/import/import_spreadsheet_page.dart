import 'package:budgen/app/import/import_spreadsheet_store.dart';
import 'package:budgen/app/import/widgets/spreadsheet_options.dart';
import 'package:budgen/app/tabs/tabs_page.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ImportSpreadsheetPage extends StatefulWidget {

  final bool loadSpreadSheet;
  const ImportSpreadsheetPage({this.loadSpreadSheet = false});


  @override
  _ImportSpreadsheetPageState createState() => _ImportSpreadsheetPageState();
}

class _ImportSpreadsheetPageState extends State<ImportSpreadsheetPage> {
  final ColorPalette colorPalette = ColorPalette();
  final store = ImportSpreadsheetStore();

  @override
  void initState() {
    super.initState();
    store.setLoadSpreadsheet(widget.loadSpreadSheet);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorPalette.primaryCollor,
          title: Text("Importar Planilha"),
        ),
        body: Observer(builder: (_) {
          if (!store.loadSpreadsheet) {
            return SpreadsheetOptions(
              onPressedYes: () {
                store.setLoadSpreadsheet(true);
              },
              onPressedAfter: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => TabsPage()));
              },
            );
          }

          if (store.isLoading) {
            return SizedBox(
                height: MediaQuery.of(context).size.height / 1.3,
                child: Center(
                    child: CircularProgressIndicator(
                        color: colorPalette.primaryCollor)));
          }

          return ListView.separated(
            itemCount: store.spreadsheets.length,
            itemBuilder: (_, index) {
              final spreadsheet = store.spreadsheets[index];

              return ListTile(
                title: Text(
                  spreadsheet.name,
                ),
                trailing: Icon(Icons.send),
                onTap: () {
                  store.importSpreadsheet(context, spreadsheet.id);
                },
              );
            },
            separatorBuilder: (_, __) {
              return Divider();
            },
          );
        }));
  }
}
