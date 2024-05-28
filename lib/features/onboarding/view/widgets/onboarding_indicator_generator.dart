
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';
import 'onboarding_indicator.dart';

class OnboardingIndicatorGenerator extends StatelessWidget {
  const OnboardingIndicatorGenerator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(builder: (controller) {
      return Row(
        children: [
          ...List.generate(
              controller.onboardingModelList.length,
              (index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8),
                    child: OnboardingIndicator(
                        isActive:
                            index == controller.pageCurrentIndex),
                  ))
        ],
      );
    });
  }
}
