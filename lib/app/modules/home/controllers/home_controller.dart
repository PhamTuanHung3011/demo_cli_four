import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
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

// dung obx thi khong can update();
  void increment() => count.value++;

  //dung GetBuilder thi can phai su dung update();
  void decrement() {
    count.value--;
    update();
  }
}
