import 'package:flutter_getx/models/user.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class UserController extends GetxController{
  final  user = User().obs;

updateUser({String name ,int count}){
  user.update((value) {
    value.name=name;
    value.count=count;
  });
}
}