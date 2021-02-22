import 'package:admin/models/profile.dart';
import 'package:admin/services/users/users_api_provider.dart';

class UsersRepository {
  UsersProvider _userProvider = UsersProvider();
  Future<List<Profile>> get allUsers => _userProvider.getAllUsers();
  //TODO: present and missing users repositories
}
