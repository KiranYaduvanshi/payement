import 'package:get/get.dart';
import 'package:payments/binding/home_binding.dart';
import 'package:payments/UI/home_page.dart';
import 'package:payments/util/routes/app_pages.dart';

class AppRoutes {
  static String initalRoutes = AppPages.homePage;
  static final routes = [
    GetPage(
        name: AppPages.homePage,
        page: () => HomePage(),
        binding: HomeBinding()),
  ];
}
