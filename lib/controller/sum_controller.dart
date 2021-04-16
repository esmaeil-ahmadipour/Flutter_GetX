import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  increment1() => count1.value++;

  increment2() => count2.value++;

  int get sum => count1.value + count2.value;
}
