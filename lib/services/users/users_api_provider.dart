import 'dart:convert';

import 'package:admin/models/profile.dart';
import 'package:admin/services/auth/auth_service.dart';
import 'package:http/http.dart' as http;

class UsersProvider {
  final String usersListUrl = 'http://188.225.73.135/api/user/list/';
  final headers = AuthService.headers;
  Future<List<Profile>> getAllUsers() async {
    print('dsdsd');
    try {
      final response = await http.get(usersListUrl, headers: headers);
      print('status code ${response.statusCode}');
      if (response.statusCode == 200) {
        final List<dynamic> usersJson = json.decode(response.body);
        print('users Json $usersJson');
        return usersJson.map((json) => Profile.fromJson(json)).toList();
      } else {
        throw Exception('no user found');
      }
    } catch (e) {
      print('exception $e');
    }
    //TODO:get present and missing users functions
  }
}
