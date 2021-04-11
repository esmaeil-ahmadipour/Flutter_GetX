import 'package:flutter/material.dart';
import 'package:flutter_getx/state_management/counter_state.dart';
import 'package:flutter_getx/utils/components.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CounterState counterState = Get.put(CounterState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildRow(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Obx(() => Text('State:' + counterState.counter.string))),
          Divider(),
          ListTile(
            title: RaisedButton(
              child: Text('Go to Other Page'),
              onPressed: () {
                navigationOtherPage();
              },
            ),
          ),
          Divider(),
          ListTile(
            title: RaisedButton(
              child: Text('Show SnackBar'),
              onPressed: () {
                getSnackBar(position: '');
              },
            ),
            subtitle: RaisedButton(
              child: Text('Show SnackBar : Top'),
              onPressed: () {
                getSnackBar(position: 'top');
              },
            ),
          ),
          Divider(),
          ListTile(
            title: RaisedButton(
              child: Text('Show Dialog'),
              onPressed: () {
                getDialogs();
              },
            ),
          ),
          Divider(),
          ListTile(
            title: RaisedButton(
              child: Text('Show BottomSheet'),
              onPressed: () {
                getBottomSheet();
              },
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  Row buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            counterState.increment();
          },
        ),
        FloatingActionButton(
          child: Icon(Icons.remove_rounded),
          onPressed: () {
            counterState.decrement();
          },
        ),
      ],
    );
  }
}
