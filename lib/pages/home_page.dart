import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/controller/home_controller.dart';
import 'package:getx_demo/pages/home_widgets/home_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          // ignore: avoid_print
          print('build home');
          return Scaffold(
            // ignore: prefer_const_constructors
            body: Center(
              child: const HomeList(),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _.incrent(),
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
