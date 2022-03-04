import 'package:budgen/data/remote/google_auth.dart';

class GetSignOutGoogleAuth {
  final GoogleAuth _auth;

  GetSignOutGoogleAuth(this._auth);

  Future<bool> call() async {
    bool status = await _auth.signOutFromGoogle();
    return status;
  }
}
