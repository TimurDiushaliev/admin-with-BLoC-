import 'package:admin/bloc/auth_bloc/auth_bloc.dart';
import 'package:admin/bloc/auth_bloc/auth_event.dart';
import 'package:admin/styles/auth_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthActions extends StatelessWidget {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);

    return Column(
      children: [
        TextField(
          controller: _userNameController,
          decoration: AuthStyle.userNameStyle,
        ),
        TextField(
          controller: _passwordController,
          decoration: AuthStyle.passwordStyle,
        ),
        RaisedButton(
            child: Text('Войти'),
            onPressed: () {
              String username = _userNameController.text;
              String password = _passwordController.text;
              authBloc.add(SignInEvent(username: username, password: password));
            }),
      ],
    );
  }
}
