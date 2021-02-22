import 'package:admin/bloc/users_bloc/users_bloc.dart';
import 'package:admin/bloc/users_bloc/users_event.dart';
import 'package:admin/styles/search_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController editingController = TextEditingController();
    UsersBloc _userBloc = BlocProvider.of<UsersBloc>(context);
    return RaisedButton(onPressed: (){
      _userBloc.add(FetchAllUsersEvent());
    });
    // return Padding(
    //   padding: EdgeInsets.all(8.0),
    //   child: TextField(
    //       onChanged: (value) {
    //         // filterSearchResults(value);
    //       },
    //       controller: editingController,
    //       decoration: SearchStyle.searchStyle),
    // );
  }
}
