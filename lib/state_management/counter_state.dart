import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterState extends GetxController{
  RxInt counter =0.obs;

  void increment() => counter.value++;
  void decrement() => counter.value--;
}