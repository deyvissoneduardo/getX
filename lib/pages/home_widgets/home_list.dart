import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/controller/home_controller.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'users',
        builder: (_) {
          if (_.loading) {
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: const LinearProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: _.users.length,
            itemBuilder: (context, index) {
              final user = _.users[index];
              return ListTile(
                title: Text(user.fistName!),
                subtitle: Text(user.email!),
              );
            },
          );
        });
  }
}
