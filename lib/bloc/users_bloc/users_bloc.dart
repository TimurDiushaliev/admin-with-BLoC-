

import 'package:admin/bloc/users_bloc/users_event.dart';
import 'package:admin/bloc/users_bloc/users_state.dart';
import 'package:admin/models/profile.dart';
import 'package:admin/services/users/users_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersBloc extends Bloc<UserEvent, UsersState> {
  UsersRepository usersRepository;
  UsersBloc(this.usersRepository) : super(LoadingState());

  @override
  Stream<UsersState> mapEventToState(UserEvent event) async* {
    if (event is FetchAllUsersEvent) {
      yield LoadingState();
      try {
        final List<Profile> _allUsersLoadded =
            await usersRepository.allUsers;
            print('all users $_allUsersLoadded');
        yield AllUsersLoaddedState(allUsersLoadded: _allUsersLoadded);
      } catch (_) {
        UsersErrorState();
      }
    }
    // if (event is FetchPresentUsersEvent) {
    //   yield UsersLoadingState();
    //   try {
    //     final List<Profile> _presentUsersLoadded =
    //         await usersRepository.getAllUsers();
    //     yield PresentUsersState(presentUsersLoadded: _presentUsersLoadded);
    //   } catch (_) {
    //     UsersErrorState();
    //   }
    // }
    // if (event is FetchMissingUsersEvent) {
    //   yield UsersLoadingState();
    //   try {
    //     final List<Profile> _missingUsersLoadded =
    //         await usersRepository.getAllUsers();
    //     yield MissingUsersState(missingUsersLoadded: _missingUsersLoadded);
    //   } catch (_) {
    //     UsersErrorState();
    //   }
    // }
    if (event is CreateUserEvent) {
      yield CreateUserState();
    }
    if (event is DeleteUserEvent) {
      yield UserDeletedState();
    }
  }
}
