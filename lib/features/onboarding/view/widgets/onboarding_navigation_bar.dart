import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/functions/navigate_to_login_view.dart';
import '../../controller/onboarding_controller.dart';
import 'text_widget.dart';

class OnboardingNavigationBar extends StatelessWidget {
  const OnboardingNavigationBar({
    super.key,
    required this.onboardingController,
  });

  final OnboardingController onboardingController;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        builder: (controller) => Row(
              children: [
                controller.isLastOnboardingPage()
                    ? const SizedBox.shrink()
                    : const TextWidget(
                        text: AppStrings.skip,
                        onTap: navigateToLoginView,
                      ),
                const Spacer(),
                controller.isLastOnboardingPage()
                    ? const TextWidget(
                        text: AppStrings.startNow,
                        onTap: navigateToLoginView,
                      )
                    : TextWidget(
                        text: AppStrings.next,
                        onTap: onboardingController.nextPage,
                      )
              ],
            ));
  }
}
