import 'package:admin/bloc/users_bloc/users_bloc.dart';
import 'package:admin/services/users/users_repository.dart';
import 'package:admin/widgets/users/all_of_users/all_users_list.dart';
import 'package:admin/widgets/users/all_of_users/search_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListPage extends StatelessWidget {
  final UsersRepository usersRepository = UsersRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (context) => UsersBloc(usersRepository),
      child: MaterialApp(
              home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              SearchUser(),
              Expanded(child: AllUsersList()),
            ],
          ),
        ),
      ),
    );
  }
}
