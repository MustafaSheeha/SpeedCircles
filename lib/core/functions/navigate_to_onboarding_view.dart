import 'package:get/get.dart';

import '../../features/onboarding/bindings/onboarding_binding.dart';
import '../../features/onboarding/view/onboarding_view.dart';

void navigateToOnboardingView() {
    Get.off(() => const OnboardingView(), binding: OnboardingBinding());
  }