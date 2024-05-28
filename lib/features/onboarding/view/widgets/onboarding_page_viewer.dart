
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';
import 'onboarding_body_widget.dart';

class OnboardingPageViewer extends StatelessWidget {
  const OnboardingPageViewer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.85,
      child: GetBuilder<OnboardingController>(
        builder: (controller) => PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: controller.pageController,
          onPageChanged: (value) {
            controller.updatepageCurrentIndex(value);
          },
          itemCount: controller.onboardingModelList.length,
          itemBuilder: (context, index) {
            return OnboardingBodyWidget(
              image: controller.onboardingModelList[index].image,
              title: controller.onboardingModelList[index].title,
              description: controller.onboardingModelList[index].description,
            );
          },
        ),
      ),
    );
  }
}
