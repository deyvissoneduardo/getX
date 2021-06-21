import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/controller/reactive_controller.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
        init: ReactiveController(),
        builder: (_) {
          // ignore: avoid_print
          print('reactive page');
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Obx(() => ListView(
                    children: _.mapItens.values
                        .map((e) => ListTile(
                              title: Text(e),
                            ))
                        .toList(),
                  )),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'add',
                  child: const Icon(Icons.add),
                  onPressed: () => _.addItem(),
                  // onPressed: () => _.addMapItems(),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  heroTag: 'date',
                  child: const Icon(Icons.calendar_today_outlined),
                  onPressed: () => _.getDate(),
                ),
              ],
            ),
          );
        });
  }
}
