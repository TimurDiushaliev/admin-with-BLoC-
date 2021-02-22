import 'package:admin/bloc/users_bloc/users_event.dart';
import 'package:admin/models/profile.dart';
import 'package:flutter/foundation.dart';

abstract class UsersState {}

class LoadingState extends UsersState {}

class AllUsersLoaddedState extends UsersState {
  List<dynamic> allUsersLoadded;
  AllUsersLoaddedState({@required this.allUsersLoadded})
      : assert(allUsersLoadded != null);
}

class UserDeletedState extends UsersState {}

class PresentUsersState extends UsersState {
  List<dynamic> presentUsersLoadded;
  PresentUsersState({@required this.presentUsersLoadded})
      : assert(presentUsersLoadded != null);
}

class MissingUsersState extends UsersState {
  List<dynamic> missingUsersLoadded;
  MissingUsersState({@required this.missingUsersLoadded})
      : assert(missingUsersLoadded != null);
}

class CreateUserState extends UsersState {
  Profile user;
  CreateUserState({@required this.user}) : assert(user != null);
}

class UsersErrorState extends UsersState {}
