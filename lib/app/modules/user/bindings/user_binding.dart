import 'package:get/get.dart';
import 'package:get_cli_four/app/data/provider/user_repository/user_repository.dart';
import 'package:get_cli_four/app/data/service/user_service/user_api.dart';
import 'package:http/http.dart' as http;

import '../controllers/user_controller.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(
      () => UserController(
          userRepository:
              UserRepository(userApi: UserApi(httpClient: http.Client()))),
    );
  }
}
