import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_demo/controller/home_controller.dart';

class HomeLabel extends StatelessWidget {
  const HomeLabel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'text',
        builder: (_) {
          // ignore: avoid_print
          print('build text');
          return Text('${_.counter}');
        });
  }
}
