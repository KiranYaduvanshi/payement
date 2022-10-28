import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payments/UI/home_page.dart';

class BottomNaviController extends GetxController{
  DateTime? currentBackPressTime;
  Rx<int> selectedIndex = 0.obs;

  final List<Widget> widgetOptions = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),

    // HomePage(),
  ];

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      return Future.value(false);
    }
    return Future.value(true);
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }



}