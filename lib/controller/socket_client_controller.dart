import 'dart:async';

import 'package:get/state_manager.dart';
import 'package:faker/faker.dart';

class SocketClientController extends GetxController {
  RxString _message = ''.obs;
  final _faker = Faker();
  Timer _timer;

  RxString get message => _message;
  @override
  void onInit() {
    super.onInit();
    _init();
  }

  _init() {
    _timer = Timer.periodic(const Duration(seconds: 5),
        (timer) => _message.value = _faker.lorem.sentence());
  }

  @override
  void onClose() {
    if (_timer != null) _timer.cancel();
    super.onClose();
  }
}
