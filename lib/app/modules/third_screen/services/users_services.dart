import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/users_model.dart';

class UserServices {
  static Future<UsersModel?> getUsers({
    required int page,
    int perPage = 10,
  }) async {
    try {
      final response = await http.get(
        Uri.parse('https://reqres.in/api/users?page=$page&per_page=$perPage'),
        headers: {'x-api-key': 'reqres-free-v1'},
      );

      if (response.statusCode == 200) {
        return UsersModel.fromJson(json.decode(response.body));
      }
      return null;
    } catch (e) {
      print('Error fetching users: $e');
      return null;
    }
  }
}
