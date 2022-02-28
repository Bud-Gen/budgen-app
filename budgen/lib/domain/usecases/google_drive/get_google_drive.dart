import 'package:budgen/data/remote/google_api.dart';
import 'package:budgen/domain/entities/drive_file.dart';
import 'package:googleapis/drive/v3.dart' as ga;

class GetGoogleDrive {
  Future<List<DriveFile>> listSpreadSheetsFile(
      Map<String, String> authHeaders) async {
    var client = GoogleApi(authHeaders);
    var drive = ga.DriveApi(client);

    List<DriveFile> files = [];

    var value = await drive.files
        .list(q: "mimeType='application/vnd.google-apps.spreadsheet'");

    for (var v in value.files!) {
      files.add(DriveFile(
          id: v.id!, name: v.name!, kind: v.kind!, mineType: v.mimeType!));
    }

    return files;
  }
}
