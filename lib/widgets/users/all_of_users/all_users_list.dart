import 'package:admin/bloc/users_bloc/users_bloc.dart';
import 'package:admin/bloc/users_bloc/users_state.dart';
import 'package:admin/services/users/users_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllUsersList extends StatelessWidget {
  final UsersRepository allUsersRepository = UsersRepository();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(builder: (context, state) {
      if (state is LoadingState) {
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      }
      if (state is AllUsersLoaddedState) {
        return ListView.builder(
            itemCount: state.allUsersLoadded.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                leading: state.allUsersLoadded[index].image != null
                    ? CircleAvatar(
                        backgroundImage: NetworkImage(
                            state.allUsersLoadded[index].profileImage.image),
                      )
                    : Icon(Icons.person),
                title: Text(state.allUsersLoadded[index].user.lastName +
                    ' ' +
                    state.allUsersLoadded[index].user.firstName),
              ));
            });
      }
      if (state is UsersErrorState) {
        return Center(
          child: Text('Возникла ошибка!'),
        );
      }
      return Center(
        child: Text('BloC не работает'),
      );
    });
  }
}
