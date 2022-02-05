import 'package:BudGen/data/remote/google_auth.dart';
import 'package:BudGen/domain/entities/user.dart';

class LoginGoogle {
  final GoogleAuth _auth;

  LoginGoogle(this._auth);

  Future<bool> signIn() async {
    bool status = await _auth.signInWithGoogle();
    return status;
  }

  Future<void> signOut() async {
    _auth.signOutFromGoogle();
  }

  Future<UserCredentials> getGoogleUser() async {
    UserCredentials user = await _auth.getGoogleUser();
    return user;
  }
}
