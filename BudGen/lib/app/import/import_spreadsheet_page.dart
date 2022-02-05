import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'import_spreadsheet_store.dart';

class ImportSpreadSheetPage extends StatefulWidget {
  const ImportSpreadSheetPage({Key key}) : super(key: key);

  @override
  _ImportSpreadSheetState createState() => _ImportSpreadSheetState();
}

class _ImportSpreadSheetState extends State<ImportSpreadSheetPage> {
  final ColorPalette colorPalette = ColorPalette();
  final importSpreadsheetStore = new ImportSpreadsheetStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPalette.getColorPrimary(),
        title: Text(
          "Importar Planilha",
          textAlign: TextAlign.center,
        ),
      ),
      body: Observer(
        builder: (_) {
          return ListView.separated(
            itemCount: importSpreadsheetStore.spreadsheets.length,
            itemBuilder: (_, index) {
              final spreadsheet = importSpreadsheetStore.spreadsheets[index];

              return ListTile(
                title: Text(
                  spreadsheet.name,
                ),
                trailing: Icon(Icons.send),
                onTap: () {
                  importSpreadsheetStore.importSpreadsheet(
                      context, spreadsheet.id);
                },
              );
            },
            separatorBuilder: (_, __) {
              return Divider();
            },
          );
        },
      ),
    );
  }
}
