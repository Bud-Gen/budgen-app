import 'package:budgen/data/remote/google_auth.dart';

class GetSignInGoogleAuth {
  final GoogleAuth _auth;
  GetSignInGoogleAuth(this._auth);

  Future<bool> call() async {
    bool status = await _auth.signInWithGoogle();
    return status;
  }
}
