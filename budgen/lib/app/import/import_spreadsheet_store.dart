import 'package:budgen/app/tabs/tabs_page.dart';
import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/domain/entities/drive_file.dart';
import 'package:budgen/domain/usecases/google_drive/get_google_drive.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'import_spreadsheet_store.g.dart';

class ImportSpreadsheetStore = _ImportSpreadsheetStore
    with _$ImportSpreadsheetStore;

abstract class _ImportSpreadsheetStore with Store {
  GetGoogleDrive googleDrive = new GetGoogleDrive();

  //GetSpreadsheet spreadsheet = new GetSpreadsheet();
  GoogleAuth googleAuth = new GoogleAuth();

  @observable
  bool loadSpreadsheet = false;

  @observable
  bool isLoading = false;

  @observable
  ObservableList<DriveFile> spreadsheets = new ObservableList<DriveFile>();

  @action
  void setLoadSpreadsheet(bool value) {
    this.loadSpreadsheet = value;
    this.isLoading = true;
    getFiles();
  }

  @action
  Future<void> getFiles() async {
    final headers = await googleAuth.getAuthHeaders();
    List<DriveFile> files = await googleDrive.listSpreadSheetsFile(headers);

    for (var i in files) {
      spreadsheets.add(i);
    }
    this.isLoading = false;
  }

  @action
  Future<void> importSpreadsheet(BuildContext context, String id) async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => TabsPage(),
    ));

    // UserCredentials user = await googleAuth.getGoogleUser();
    // Map<String,dynamic> response = await spreadsheet.import(user.id,id);
    //
    // if(response["status"]){
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
    //     builder: (context) => TabsPage(),
    //   ));
    // }
  }
}
