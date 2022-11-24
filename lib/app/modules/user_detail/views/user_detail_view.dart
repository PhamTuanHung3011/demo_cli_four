import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_detail_controller.dart';

class UserDetailView extends GetView<UserDetailController> {
  const UserDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserDetailController>();
    final id = Get.arguments;
    print('====> $id');

    return Scaffold(
      appBar: AppBar(
        title: const Text('UserDetailView'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: controller.findUserDetail(id),
        builder: (context, snap) => Column(
          children: [
            Text('===> ${snap.data?.id}'),
            Text('===> ${snap.data?.name}'),
            Text('===> ${snap.data?.company?.name ?? 'unknown'}'),
            Text('===> ${snap.data?.address?.geo?.lat ?? 'unknown'}'),
          ],
        ),
      ),
    );
  }
}
