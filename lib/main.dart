import 'dart:io';

import 'package:admin/bloc/auth_bloc/auth_state.dart';
import 'package:admin/pages/auth_page.dart';
import 'package:admin/services/auth/admin_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:toast/toast.dart';

import 'bloc/auth_bloc/auth_bloc.dart';
import 'pages/all_users_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory document = await getApplicationDocumentsDirectory();
  await Hive.init(document.path);
  await Hive.openBox('userBox');
  runApp(BlocProvider<AuthBloc>(create: (context) {
    final _adminRepository = AdminRepository();
    return AuthBloc(_adminRepository);
  },
  child: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is NoAccountState) return AuthPage();
        if (state is SignedInState) return UserListPage();
        if (state is AuthErrorState) Toast.show('Error', context);
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
