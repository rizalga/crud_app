import 'dart:async';
import 'package:tugasp8/db_helper/repository.dart';
import 'package:tugasp8/model/user_db.dart';

class UserService {
  late Repository _repository;

  UserService() {
    _repository = Repository();
  }

  
  Future<int> saveUser(User user) async {
    var result = await _repository.insertData('users', user.userMap());
    return result ?? 0;
  }


  // Read All Users
  Future<List<Map<String, dynamic>>?> readAllUsers() async {
    return await _repository.readData('users');
  }

  // Edit User
  Future<int?> updateUser(User user) async {
    return await _repository.updateData('users', user.userMap());
  }

  // Delete User
  Future<int?> deleteUser(int userId) async {
    return await _repository.deleteDataById('users', userId);
  }
}
