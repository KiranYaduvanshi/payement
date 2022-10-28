import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controller/Qr_code_scanner_controller.dart';

class QRCodeScanner extends StatelessWidget{
  QrCodeScannerController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    controller.readQr();
    return Scaffold(
      body:


      Stack(
        children: [
               QRView(
                key: controller.qrKey,
                onQRViewCreated: controller.onQRViewCreated,
                overlay: QrScannerOverlayShape(
                  borderColor: Colors.orange,
                  borderRadius: 10,
                  borderLength: 30,
                  borderWidth: 10,
                  cutOutSize: 250,
                ),
              ),

          Obx(()=>
             Positioned(
              bottom: 30,
              left: 10,
              right: 10,
              child:controller.code != null ? "${controller.code}".text.size(20).color(Colors.white).bold.make():"result not found".text.make(),

            ),
          ),

        ],
      ),
    );
  }
  
}