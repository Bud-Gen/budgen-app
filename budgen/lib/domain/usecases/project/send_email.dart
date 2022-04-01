import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/domain/api_services/api_handler.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/user.dart';
import 'package:budgen/domain/usecases/google_auth/get_google_user.dart';

class SendEmail {
  final GoogleAuth _auth;
  late final GetGoogleUser getGoogleUser;

  SendEmail(this._auth) {
    this.getGoogleUser = new GetGoogleUser(_auth);
  }

  Future<bool> call(String email, Project project) async {
    if (email.isEmpty) {
      UserCredentials user = await getGoogleUser.call();
      email = user.email;
    }

    Map<String, dynamic> response = await sendEmail(email,project);
    return response["status"];
  }
}
