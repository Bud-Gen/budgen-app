import 'package:BudGen/app/tabs/tabs_page.dart';
import 'package:BudGen/data/remote/google_auth.dart';
import 'package:BudGen/domain/entities/drive_file.dart';
import 'package:BudGen/domain/entities/user.dart';
import 'package:BudGen/domain/usecases/google_drive/get_google_drive.dart';
import 'package:BudGen/domain/usecases/spreadsheet/get_spreadsheet.dart';
import 'package:BudGen/utils/widgets/custom_dialog/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'import_spreadsheet_store.g.dart';

class ImportSpreadsheetStore = _ImportSpreadsheetStore
    with _$ImportSpreadsheetStore;

abstract class _ImportSpreadsheetStore with Store {
  GetGoogleDrive googleDrive = new GetGoogleDrive();
  GetSpreadsheet spreadsheet = new GetSpreadsheet();
  GoogleAuth googleAuth = new GoogleAuth();

  _ImportSpreadsheetStore() {
    getFiles();
  }

  @observable
  ObservableList<DriveFile> spreadsheets = new ObservableList<DriveFile>();

  @action
  Future<void> getFiles() async {
    final headers = await googleAuth.getAuthHeaders();
    List<DriveFile> files = await googleDrive.listSpreadSheetsFile(headers);

    for (var i in files) {
      spreadsheets.add(i);
    }
  }

  @action
  Future<void> importSpreadsheet(BuildContext context, String id) async {
    UserCredentials user = await googleAuth.getGoogleUser();
    Map<String, dynamic> response = await spreadsheet.import(user.id, id);
    CustomDialog.openDialog(context, "Planilha", response["message"]);

    if (response["status"]) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => TabsPage(),
      ));
    }
  }
}
