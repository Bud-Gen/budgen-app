import 'package:budgen/domain/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email', 'https://www.googleapis.com/auth/drive.readonly']);

  Future<bool> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      await _auth.signInWithCredential(credential);

      return true;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return false;
    }
  }

  Future<void> signOutFromGoogle() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }

  Future<Map<String, String>> getAuthHeaders() async {
    await _googleSignIn.signIn();
    Map<String, String> headers = await _googleSignIn.currentUser.authHeaders;
    return headers;
  }

  Future<String> getToken() async {
    final GoogleSignInAccount googleSignInAccount =
        await _googleSignIn.signInSilently();

    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    String token = googleSignInAuthentication.accessToken;

    return token;
  }

  Future<UserCredentials> getGoogleUser() async {
    final GoogleSignInAccount googleSignInAccount =
        await _googleSignIn.signInSilently();

    UserCredentials user = new UserCredentials(
        id: googleSignInAccount.id,
        name: googleSignInAccount.displayName,
        email: googleSignInAccount.email);

    return user;
  }
}
