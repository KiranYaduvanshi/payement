import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:payments/util/routes/app_routes.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.initalRoutes,
      getPages: AppRoutes.routes,
    );
  }
}

