import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/sum_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get.dart';

class SumPage extends StatelessWidget {
  final SumController sumController = Get.put(SumController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Sum Page with GetX'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx((){
               return Text('Count 1 : ${sumController.count1}');
              }),
              Align(
                child: Text('+'),
                alignment: AlignmentDirectional.centerEnd,
              ),
              Obx(() {
                return Text('Count 2 : ${sumController.count2}');
              }),
              Divider(),
              Obx(() {
                return Text('Sum : ${sumController.sum}');
              }),
              SizedBox(
                height: 25,
              ),
              RaisedButton(
                onPressed: () {
                  sumController.increment1();
                },
                child: Text(
                  'Increment\ncount1',
                  textAlign: TextAlign.center,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  sumController.increment2();
                },
                child: Text(
                  'Increment\ncount2',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
