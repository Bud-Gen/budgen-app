// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_spreadsheet_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImportSpreadsheetStore on _ImportSpreadsheetStore, Store {
  final _$loadSpreadsheetAtom =
      Atom(name: '_ImportSpreadsheetStore.loadSpreadsheet');

  @override
  bool get loadSpreadsheet {
    _$loadSpreadsheetAtom.reportRead();
    return super.loadSpreadsheet;
  }

  @override
  set loadSpreadsheet(bool value) {
    _$loadSpreadsheetAtom.reportWrite(value, super.loadSpreadsheet, () {
      super.loadSpreadsheet = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_ImportSpreadsheetStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$spreadsheetsAtom = Atom(name: '_ImportSpreadsheetStore.spreadsheets');

  @override
  ObservableList<DriveFile> get spreadsheets {
    _$spreadsheetsAtom.reportRead();
    return super.spreadsheets;
  }

  @override
  set spreadsheets(ObservableList<DriveFile> value) {
    _$spreadsheetsAtom.reportWrite(value, super.spreadsheets, () {
      super.spreadsheets = value;
    });
  }

  final _$getFilesAsyncAction = AsyncAction('_ImportSpreadsheetStore.getFiles');

  @override
  Future<void> getFiles() {
    return _$getFilesAsyncAction.run(() => super.getFiles());
  }

  final _$importSpreadsheetAsyncAction =
      AsyncAction('_ImportSpreadsheetStore.importSpreadsheet');

  @override
  Future<void> importSpreadsheet(BuildContext context, String id) {
    return _$importSpreadsheetAsyncAction
        .run(() => super.importSpreadsheet(context, id));
  }

  final _$_ImportSpreadsheetStoreActionController =
      ActionController(name: '_ImportSpreadsheetStore');

  @override
  void setLoadSpreadsheet(bool value) {
    final _$actionInfo = _$_ImportSpreadsheetStoreActionController.startAction(
        name: '_ImportSpreadsheetStore.setLoadSpreadsheet');
    try {
      return super.setLoadSpreadsheet(value);
    } finally {
      _$_ImportSpreadsheetStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loadSpreadsheet: ${loadSpreadsheet},
isLoading: ${isLoading},
spreadsheets: ${spreadsheets}
    ''';
  }
}
