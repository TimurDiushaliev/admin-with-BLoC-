import 'package:admin/bloc/users_bloc/users_bloc.dart';
import 'package:admin/bloc/users_bloc/users_event.dart';
import 'package:admin/styles/admin_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminActions extends StatelessWidget {
  final style = AdminStyle();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final usersBloc = BlocProvider.of<UsersBloc>(context);
    return Column(
      children: [
        TextField(
          controller: lastNameController,
          decoration: style.userLastName,
        ),
        TextField(
          controller: firstNameController,
          decoration: style.userFirstName,
        ),
        TextField(
          controller: positionController,
          decoration: style.userPosition,
        ),
        RaisedButton(onPressed: () {
          String lastName = lastNameController.text;
          String firstName = firstNameController.text;
          String position = positionController.text;
          usersBloc.add(CreateUserEvent());
        })
      ],
    );
  }
}
