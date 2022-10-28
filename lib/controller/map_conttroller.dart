import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController{

  Completer<GoogleMapController> controller = Completer();

  // void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  // }


  final CameraPosition kGooglePlex =  const CameraPosition(
    target: LatLng(30.7270, -76.7199),
    zoom: 14.4746,
  );

  static final CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> goToTheLake() async {
    final GoogleMapController mapcontroller = await controller.future;
    mapcontroller.animateCamera(CameraUpdate.newCameraPosition(kLake));
  }
}