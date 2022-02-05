// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  final _$loginAtom = Atom(name: '_LoginStore.login');

  @override
  LoginGoogle get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(LoginGoogle value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  final _$loggedInAtom = Atom(name: '_LoginStore.loggedIn');

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

  final _$signInWithGoogleAsyncAction =
      AsyncAction('_LoginStore.signInWithGoogle');

  @override
  Future<void> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  final _$signOutGoogleAsyncAction = AsyncAction('_LoginStore.signOutGoogle');

  @override
  Future<void> signOutGoogle() {
    return _$signOutGoogleAsyncAction.run(() => super.signOutGoogle());
  }

  @override
  String toString() {
    return '''
login: ${login},
loggedIn: ${loggedIn}
    ''';
  }
}
