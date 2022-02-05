import 'package:BudGen/data/remote/google_auth.dart';
import 'package:BudGen/domain/entities/user.dart';
import 'package:BudGen/domain/usecases/login/login_api.dart';
import 'package:BudGen/domain/usecases/login/login_google.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  LoginGoogle login = LoginGoogle(new GoogleAuth());

  @observable
  bool loggedIn = false;

  @action
  Future<void> signInWithGoogle() async {
    bool isLoggedWithGoogle = await login.signIn();
    if (!isLoggedWithGoogle) {}
    UserCredentials user = await login.getGoogleUser();

    bool isLoggedAtServer = await LoginApi().call(user);

    print(isLoggedAtServer);

    if (isLoggedAtServer) {
      loggedIn = true;
    }
  }

  @action
  Future<void> signOutGoogle() async {
    login.signOut();
  }
}
