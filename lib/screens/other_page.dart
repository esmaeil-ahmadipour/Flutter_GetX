import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/count_controller.dart';
import 'package:flutter_getx/controller/user_controller.dart';
import 'package:get/get.dart';

class OtherPage extends StatelessWidget {
  // if Using init: in GetBuilder Don't Need Below Line.
  // final CountController countController = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management with GetX'),
      ),
      body: Center(
        child: ListView(
          children: [
            GetBuilder<CountController>(
                init: CountController(),
                builder: (_) {
                  return ListTile(title: Text('Counter = ${_.count}'));
                }),
            Divider(),
            GetX<UserController>(
              init: UserController(),
              builder: (_) {
                return Text(
                  'Name : ${_.user.value.name}',
                  style: TextStyle(color: Colors.red),
                );
              },
            ),
            Obx(() {
              return Text(
                'Count : ${Get.find<UserController>().user.value.count}',
                style: TextStyle(color: Colors.red),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.find<CountController>().increment();
          Get.find<UserController>()
              .updateUser(name: 'Esmaeil Ahmadipour', count: 3);

          // if Using init: in GetBuilder Don't Need Below Line.
          // countController.increment();
        },
      ),
    );
  }
}
