import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/count_controller.dart';
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
        child: GetBuilder<CountController>(
            init:CountController(),
            builder: (_) {
          return ListTile(title: Text('Counter = ${_.count}'));
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Get.find<CountController>().increment();

          // if Using init: in GetBuilder Don't Need Below Line.
          // countController.increment();
        },
      ),
    );
  }
}
