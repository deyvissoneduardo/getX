import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/api/users_api.dart';
import 'package:getx_demo/models/user_model.dart';
import 'package:getx_demo/pages/profile_page.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<UserModel> _users = [];
  bool _loading = true;

  List<UserModel> get users => _users;
  bool get loading => _loading;

  @override
  onInit() {
    // ignore: avoid_print
    print('init state home');
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // ignore: avoid_print
    print('carregou ready home');
    loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersApi.instance.getUsers(1);
    _users = data;
    _loading = false;
    update(['users']);
  }

  int get counter => _counter;
  void incrent() {
    _counter++;
    update(['text'], _counter >= 5);
  }

  Future<void> showUserProfile(UserModel userModel) async {
    final result = await Get.to<String>(
      () => const ProfilePage(),
      arguments: userModel,
    );
    if (result != null) {
      // ignore: avoid_print
      print("😠  result $result");
    }
  }
}
