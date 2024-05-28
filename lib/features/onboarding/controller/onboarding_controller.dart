import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_assets.dart';
import 'package:speedcircles/core/constants/app_strings.dart';

import '../model/onboarding_model.dart';

class OnboardingController extends GetxController {
  List<OnboardingModel> onboardingModelList = [];

  @override
  void onInit() {
    onboardingModelList = [
      OnboardingModel(
          description: AppStrings.varietyAndReasonablePriceDescription,
          image: AppAssets.varietyAndReasonablePrice,
          title: AppStrings.varietyAndReasonablePrice),
      OnboardingModel(
          description: AppStrings.variousPaymentMethodsAndInstallmentsDescription,
          image: AppAssets.variousPayment,
          title: AppStrings.variousPaymentMethodsAndInstallments),
      OnboardingModel(
          description: AppStrings.warrantyDescription,
          image: AppAssets.warranty,
          title: AppStrings.warrantyDescription),
    ];
    super.onInit();
  }
}
