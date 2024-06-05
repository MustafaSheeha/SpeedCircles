import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/database/cache/cache_helper.dart';
import 'package:speedcircles/features/auth/register/view/register_view.dart';
import 'package:speedcircles/features/onboarding/bindings/onboarding_binding.dart';
import 'package:speedcircles/features/onboarding/view/onboarding_view.dart';

import '../../../core/functions/navigate_to_onboarding_view.dart';
import '../../../core/functions/navigate_to_login_view.dart';

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
      final bool isOnBoardingVisited =
          Get.find<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
      if (isOnBoardingVisited) {
        navigateToLoginView();
      } else {
        navigateToOnboardingView();
      }
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
