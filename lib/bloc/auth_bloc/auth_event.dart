import 'package:flutter/cupertino.dart';

abstract class AuthEvent {}

class AppLoaddedEvent extends AuthEvent {}

class SignInEvent extends AuthEvent {
  String username;
  String password;
  SignInEvent({@required this.username, @required this.password});
}

class SignOutEvent extends AuthEvent {}
