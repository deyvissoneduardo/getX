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
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() {
                    // ignore: avoid_print
                    print('reative text');
                    return Text(
                      _.counter.value.toString(),
                      style: const TextStyle(fontSize: 30),
                    );
                  }),
                  const SizedBox(height: 8),
                  Obx(() {
                    // ignore: avoid_print
                    print('reative date');
                    return Text(
                      _.currentDate.value,
                      style: const TextStyle(fontSize: 30),
                    );
                  }),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'add',
                  child: const Icon(Icons.add),
                  onPressed: () => _.increment(),
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
