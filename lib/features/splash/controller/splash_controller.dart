import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void onInit() {
    super.onInit();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
    Future.delayed(const Duration(seconds: 3), () {
// Impl navigation to next screen
    });
  }

  @override
  void onClose() {
    super.onClose();
    animationController.dispose();
  }
}
