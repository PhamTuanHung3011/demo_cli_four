import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('UserView'),
        centerTitle: true,
      ),
      body: Container(
        child: Obx(() => ListView.builder(
            itemCount: controller.userList.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed('/user-detail',
                      arguments: controller.userList[index].id);
                  print('======> $Get.arguments');
                  print('=====> GestureDetector');
                },
                child: ListTile(
                  title: Text(controller.userList[index].username),
                  trailing: Icon(Icons.arrow_circle_right),
                ),
              );
            }))),
      ),
    );
  }
}
