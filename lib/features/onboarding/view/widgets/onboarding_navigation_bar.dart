import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../core/constants/app_strings.dart';
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
    return Row(
      children: [
        TextWidget(
          text: AppStrings.skip,
          onTap: () {},
        ),
        const Spacer(),
        GetBuilder<OnboardingController>(
            builder: (controller) => controller.isLastOnboardingPage()
                ? TextWidget(
                    text: AppStrings.startNow,
                    onTap: () {},
                  )
                : TextWidget(
                    text: AppStrings.next,
                    onTap: onboardingController.nextPage,
                  ))
      ],
    );
  }
}
