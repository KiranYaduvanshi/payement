import 'package:get/get.dart';
import 'package:payments/controller/map_conttroller.dart';

class MapBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MapController());
  }
}