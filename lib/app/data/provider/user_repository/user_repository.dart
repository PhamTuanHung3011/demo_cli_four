import 'package:get_cli_four/app/data/service/user_service/user_api.dart';

import '../../models/user/user_model.dart';

class UserRepository {
  final UserApi userApi;

  UserRepository({required this.userApi});

  getAllUser() {
    return userApi.getAllUser();
  }

  Future<User> getUserDetail(int id) async {
    return await userApi.getUserDetail(id);
  }
}
