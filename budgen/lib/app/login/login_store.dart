import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/domain/entities/user.dart';
import 'package:budgen/domain/usecases/google_auth/get_google_user.dart';
import 'package:budgen/domain/usecases/google_auth/get_sign_in_google_auth.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
   GetSignInGoogleAuth login = GetSignInGoogleAuth(new GoogleAuth());

  @observable
  GetGoogleUser googleUser = GetGoogleUser(new GoogleAuth());

  @observable
  bool loggedIn = false;

  @action
  Future<void> signInWithGoogle() async {
    bool isLoggedWithGoogle = await login.call();
    if (!isLoggedWithGoogle) {}
    UserCredentials user = await googleUser.call();

    loggedIn = true;

    //bool isLoggedAtServer = await LoginApi().call(user);
    // if (isLoggedAtServer) {
    //   loggedIn = true;
    // }
  }
}
