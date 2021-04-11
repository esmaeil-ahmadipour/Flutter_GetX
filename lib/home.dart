import 'package:flutter/material.dart';
import 'package:flutter_getx/utils/components.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
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
}
