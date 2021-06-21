import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_demo/controller/socket_client_controller.dart';
import 'package:getx_demo/models/pet.dart';

class ReactiveController extends GetxController {
  RxInt counter = 0.obs;
  RxString currentDate = ''.obs;
  RxList<String> itens = <String>[].obs;
  RxMap<String, dynamic> mapItens = <String, dynamic>{}.obs;

  Pet myPet = Pet(
    name: 'Lulu',
    age: 2,
  );
  StreamSubscription<String> _streamSubscription;
  @override
  void onInit() {
    super.onInit();
    final SocketClientController controller =
        Get.find<SocketClientController>();

    _streamSubscription = controller.message.listen((String data) {
      // ignore: avoid_print
      print('********message $data **********');
    });
  }

  @override
  void onClose() {
    _streamSubscription?.cancel();
    super.onClose();
  }

  void increment() {
    counter.value++;
  }

  void getDate() {
    currentDate.value = DateTime.now().toString();
  }

  void addItem() {
    itens.add(DateTime.now().toString());
  }

  void removeItem(int index) {
    itens.removeAt(index);
  }

  // void addMapItems() {
  //   String key = DateTime.now().toString();
  //   mapItens.addAll(key);
  // }

  void removeMapItem(String key) {
    mapItens.remove(key);
  }

  void setPetAge(int age) {
    myPet.age = age;
    // myPet.value = myPet.value.copyWith(age: age + 1);
  }
}
