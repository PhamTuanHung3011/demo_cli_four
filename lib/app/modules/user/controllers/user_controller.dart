import 'package:get/get.dart';
import 'package:get_cli_four/app/data/models/user/user_model.dart';
import 'package:get_cli_four/app/data/provider/user_repository/user_repository.dart';

class UserController extends GetxController {
  //TODO: Implement UserController

  final UserRepository userRepository;

  UserController({required this.userRepository});

  final RxList<User> _userList = <User>[].obs;

  // ignore: invalid_use_of_protected_member
  get userList => this._userList.value;
  set userList(value) => this._userList.value = value;

  getAllUser() {
    userRepository.getAllUser().then((data) {
      userList = data;
      print('=====> data: $data');
      update();
    });
  }

  @override
  void onInit() {
    super.onInit();
    getAllUser();
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
