import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/pages/home_page.dart';

class SplashController extends GetxController {
  // @override
  // void onInit() {
  //   Future.delayed(const Duration(seconds: 2));
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(const HomePage(), transition: Transition.leftToRight);
    });
  }

  @override
  void onClose() {
    // ignore: avoid_print
    print('fechou');
    super.onClose();
  }
}
