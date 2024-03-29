// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStore, Store {
  late final _$loginAtom = Atom(name: '_LoginStore.login', context: context);

  @override
  GetSignInGoogleAuth get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(GetSignInGoogleAuth value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  late final _$googleUserAtom =
      Atom(name: '_LoginStore.googleUser', context: context);

  @override
  GetGoogleUser get googleUser {
    _$googleUserAtom.reportRead();
    return super.googleUser;
  }

  @override
  set googleUser(GetGoogleUser value) {
    _$googleUserAtom.reportWrite(value, super.googleUser, () {
      super.googleUser = value;
    });
  }

  late final _$loggedInAtom =
      Atom(name: '_LoginStore.loggedIn', context: context);

  @override
  bool get loggedIn {
    _$loggedInAtom.reportRead();
    return super.loggedIn;
  }

  @override
  set loggedIn(bool value) {
    _$loggedInAtom.reportWrite(value, super.loggedIn, () {
      super.loggedIn = value;
    });
  }

  late final _$signInWithGoogleAsyncAction =
      AsyncAction('_LoginStore.signInWithGoogle', context: context);

  @override
  Future<void> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  @override
  String toString() {
    return '''
login: ${login},
googleUser: ${googleUser},
loggedIn: ${loggedIn}
    ''';
  }
}
