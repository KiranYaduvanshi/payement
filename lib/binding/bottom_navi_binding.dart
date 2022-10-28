import 'package:get/get.dart';
import 'package:payments/controller/bottom_navi_controller.dart';

class BottomNaviBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNaviController());
  }

}