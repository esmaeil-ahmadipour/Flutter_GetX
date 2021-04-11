import 'package:flutter/material.dart';
import 'package:flutter_getx/home.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX',
      theme: ThemeData(
        splashColor:Colors.grey,
        scaffoldBackgroundColor: Colors.grey[100],

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter GetX'),
    );
  }
}

