import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final authUrl = 'http://188.225.73.135/api/auth/token/login/';
  var box = Hive.box('userBox');
  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=Utf-8'
  };
  Future signIn(String username, String password) async {
    final body = {'username': username, 'password': password};
    print('body $body');
    final response = await http.post(authUrl, headers: headers, body: json.encode(body));
    print('rep ${json.decode(response.body)}');
    if (response.statusCode == 200) {
      Map jsonBody = json.decode(response.body);
      var token = jsonBody['auth_token'];
      print('token $token');
      headers['Authorization'] = 'Token $token';
      box.put('token', token);
    } else {
      return null;
    }
  }

   get token {
    return headers['Authorization'];
  }

  void signOut() {
    box?.delete('token');
  }
}
