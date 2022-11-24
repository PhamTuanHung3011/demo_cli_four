import 'package:get/get.dart';

import '../../../data/models/user/user_model.dart';
import '../../../data/provider/user_repository/user_repository.dart';

class UserDetailController extends GetxController {
  final UserRepository userRepository;
  UserDetailController({required this.userRepository});

  final Rx<User> _user = User().obs;

  get user => this._user.value;
  set user(value) => this._user.value = value;

  Future<User> findUserDetail(int id) async {
    User user = await userRepository.getUserDetail(id);
    return user;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
