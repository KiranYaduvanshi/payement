import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:velocity_x/velocity_x.dart';


class CodeScanner extends StatefulWidget{
  @override
  CodeScannerState createState() => CodeScannerState();

}
class CodeScannerState extends State<CodeScanner>{


  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }


  Future<void> readQr() async {
    if (result != null) {
      controller!.pauseCamera();
      print(result!.code);
      controller!.dispose();
    }
  }

  @override
  void initState() {
    readQr();
    super.initState();
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;

    });
    controller.scannedDataStream.listen((scanData) {

      setState(() {
        result = scanData;
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderColor: Colors.orange,
              borderRadius: 10,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: 250,
            ),
          ),


          Positioned(
            bottom: 30,
            left: 10,
            right: 10,
            child:result != null ? "${result!.code!}".text.size(20).color(Colors.white).bold.make():"result not found".text.make(),

          )
        ],
      ),

    );


  }

}