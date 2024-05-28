import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/database/cache/cache_helper.dart';
import 'package:speedcircles/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  Get.put(CacheHelper());
  runApp(const MyApp());
}
