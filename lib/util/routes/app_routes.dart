import 'package:get/get.dart';
import 'package:payments/UI/QR_code_scanner.dart';
import 'package:payments/UI/bottom_navigation.dart';
import 'package:payments/UI/map_screen.dart';
import 'package:payments/binding/QR_code_scanner_binding.dart';
import 'package:payments/binding/bottom_navi_binding.dart';
import 'package:payments/binding/home_binding.dart';
import 'package:payments/UI/home_page.dart';
import 'package:payments/binding/map_binding.dart';
import 'package:payments/util/routes/app_pages.dart';

import '../../UI/scanner.dart';

class AppRoutes {
  static String initalRoutes = AppPages.mapScreen;
  static final routes = [
    GetPage(
        name: AppPages.homePage,
        page: () => HomePage(),
        binding: HomeBinding()),
    GetPage(
        name: AppPages.qrCodeScanner,
        page: () => QRCodeScanner(),
        binding: QRCodeScannerBinding()),
    GetPage(
        name: AppPages.bottomNavi,
        page: () => BottomNaviPage(),
        binding: BottomNaviBinding()),
    GetPage(
        name: AppPages.mapScreen,
        page: () => MapScreen(),
        binding: MapBinding()),
    GetPage(
      name: AppPages.scanner,
      page: () => CodeScanner(),
    )
  ];
}
