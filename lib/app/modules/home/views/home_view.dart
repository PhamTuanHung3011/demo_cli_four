import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli_four/app/modules/detail/views/detail_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text('Count ++'),
          Obx(() => Center(
                child: Text(controller.count.toString()),
              )),
          Text('Count --'),
          Container(
            child: GetBuilder<HomeController>(
              builder: (_) {
                return Center(
                  child: Text(controller.count.toString()),
                );
              },
            ),
          ),
          IconButton(
              onPressed: () {
                controller.decrement();
              },
              icon: Icon(
                Icons.minimize,
                color: Colors.red,
              )),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/user');
            },
            child: Text('Go to UserList'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}
