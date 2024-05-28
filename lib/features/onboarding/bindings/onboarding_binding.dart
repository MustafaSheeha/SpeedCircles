import 'package:get/get.dart';
import 'package:speedcircles/features/onboarding/controller/onboarding_controller.dart';

class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(OnboardingController());
  }
}
