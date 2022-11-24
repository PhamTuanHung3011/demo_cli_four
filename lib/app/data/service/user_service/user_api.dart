import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../models/user/user_model.dart';

const userUrl = 'https://jsonplaceholder.typicode.com/users';

class UserApi {
  final http.Client httpClient;
  UserApi({required this.httpClient});

  getAllUser() async {
    try {
      var response = await httpClient.get(Uri.parse(userUrl));
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<User> users =
            jsonResponse.map((user) => User.fromJson(user)).toList();
        return users;
      } else
        print('erro');
    } catch (_) {}
  }

  Future<User> getUserDetail(int id) async {
    List<User> users = await getAllUser();
    User user = users.firstWhere((user) => user.id == id);
    return user;
  }
}
