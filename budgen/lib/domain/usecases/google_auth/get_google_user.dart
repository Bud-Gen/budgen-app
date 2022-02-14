import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/domain/entities/user.dart';

class GetGoogleUser {
  final GoogleAuth _auth;

  GetGoogleUser(this._auth);

  Future<UserCredentials> call() async {
    UserCredentials user = await _auth.getGoogleUser();
    return user;
  }
}
