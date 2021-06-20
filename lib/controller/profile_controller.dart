import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/models/user_model.dart';

class ProfileController extends GetxController {
  UserModel _userModel;
  UserModel get userModel => _userModel;

  @override
  void onInit() {
    super.onInit();
    // ignore: avoid_print
    print('**********arguments ${Get.arguments}*************');
    _userModel = Get.arguments as UserModel;
  }
}
