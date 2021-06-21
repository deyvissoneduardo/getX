import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/controller/global_controller.dart';
import 'package:getx_demo/controller/home_controller.dart';
import 'package:getx_demo/widgets/produc_list.dart';

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
            appBar: AppBar(
              actions: [
                GetBuilder<GlobalController>(
                  id: 'favorites',
                  builder: (_) => TextButton(
                    onPressed: () {},
                    child: Text(
                      'Favorites ${_.favorites.length}',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                )
              ],
            ),
            body: const ProducList(),
            // ignore: prefer_const_constructors
            // body: Center(child: const HomeList()),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _.incrent(),
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
