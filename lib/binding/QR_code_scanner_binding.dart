import 'package:get/get.dart';
import 'package:payments/controller/Qr_code_scanner_controller.dart';

class QRCodeScannerBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeScannerController());
  }

}