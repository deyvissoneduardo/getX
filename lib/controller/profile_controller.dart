import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/models/user_model.dart';

class ProfileController extends GetxController {
  UserModel _user;
  UserModel get user => _user;

  String _inputText = '';

  @override
  void onInit() {
    super.onInit();
    _user = Get.arguments as UserModel;
  }

  void onInputTextChanged(String text) {
    _inputText = text;
  }

  void goToBackWithData() {
    // ignore: prefer_is_empty
    if (_inputText.trim().length > 0) {
      Get.back(result: _inputText);
    } else {
      showCupertinoModalPopup(
        context: Get.overlayContext,
        builder: (_) => CupertinoActionSheet(
          title: const Text("ERROR"),
          message: const Text("Ingrese un dato válido"),
          cancelButton: CupertinoActionSheetAction(
            child: const Text("ACEPTAR"),
            onPressed: () => Get.back(),
          ),
        ),
      );
    }
  }
}
