import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_strings.dart';
import 'package:speedcircles/core/widgets/vertical_space.dart';
import 'package:speedcircles/features/onboarding/controller/onboarding_controller.dart';
import 'widgets/onboarding_body_widget.dart';
import 'widgets/onboarding_indicator_generator.dart';
import 'widgets/text_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController = Get.find();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: Get.height * 0.85,
                  child: GetBuilder<OnboardingController>(
                    builder: (controller) => PageView.builder(
                      controller: controller.pageController,
                      onPageChanged: (value) {
                        controller.updatepageCurrentIndex(value);
                      },
                      itemCount: controller.onboardingModelList.length,
                      itemBuilder: (context, index) {
                        return OnboardingBodyWidget(
                          image: controller.onboardingModelList[index].image,
                          title: controller.onboardingModelList[index].title,
                          description:
                              controller.onboardingModelList[index].description,
                        );
                      },
                    ),
                  ),
                ),
                const OnboardingIndicatorGenerator(),
                const VerticalSpace(20),
                Row(
                  children: [
                    const TextWidget(text: AppStrings.skip),
                    const Spacer(),
                    GetBuilder<OnboardingController>(
                        builder: (controller) =>
                            controller.isLastOnboardingPage()
                                ? const TextWidget(text: AppStrings.startNow)
                                : TextWidget(
                                    text: AppStrings.next,
                                    onTap: onboardingController.nextPage,
                                  ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
