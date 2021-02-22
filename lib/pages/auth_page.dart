import 'package:admin/bloc/auth_bloc/auth_bloc.dart';
import 'package:admin/services/auth/admin_repository.dart';
import 'package:admin/widgets/auth/auth_actions.dart';
import 'package:admin/widgets/auth/auth_control_row.dart';
import 'package:admin/widgets/auth/auth_image.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
        body: Column(
          children: [
            AuthImage(),
            AuthControlRow(),
            AuthActions(),
          ],
        ),
      ),
    );
  }
}
