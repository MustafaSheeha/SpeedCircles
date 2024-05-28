import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/routes/app_pages.dart';
import 'package:speedcircles/core/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouteNames.splash,
      getPages: AppPages.routesList,
    );
  }
}
