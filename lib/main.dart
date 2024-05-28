import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/database/cache/cache_helper.dart';
import 'package:speedcircles/my_app.dart';

import 'core/functions/set_preferred_orientations.dart';
import 'core/functions/set_system_ui_overlay_style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPreferredOrientations();
  setSystemUIOverlayStyle();
  CacheHelper().init();
  Get.put(CacheHelper());
  runApp(const MyApp());
}
