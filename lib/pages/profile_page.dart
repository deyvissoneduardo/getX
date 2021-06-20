import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/controller/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('${_.userModel.fistName} \n ${_.userModel.lastName}'),
          ),
        );
      },
    );
  }
}
