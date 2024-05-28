import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_assets.dart';
import 'package:speedcircles/core/constants/app_strings.dart';

import '../model/onboarding_model.dart';

class OnboardingController extends GetxController {
  int pageCurrentIndex = 0;
  PageController? pageController;
  List<OnboardingModel> onboardingModelList = [];
  void updatepageCurrentIndex(int value) {
    pageCurrentIndex = value;
    update();
  }

  void nextPage() {
    if (pageCurrentIndex < onboardingModelList.length - 1) {
      pageController?.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceInOut);
    }
  }

  @override
  void onInit() {
    pageController = PageController();
    onboardingModelList = [
      OnboardingModel(
          description: AppStrings.varietyAndReasonablePriceDescription,
          image: AppAssets.varietyAndReasonablePrice,
          title: AppStrings.varietyAndReasonablePrice),
      OnboardingModel(
          description:
              AppStrings.variousPaymentMethodsAndInstallmentsDescription,
          image: AppAssets.variousPayment,
          title: AppStrings.variousPaymentMethodsAndInstallments),
      OnboardingModel(
          description: AppStrings.warrantyDescription,
          image: AppAssets.warranty,
          title: AppStrings.warranty),
    ];
    super.onInit();
  }
}
