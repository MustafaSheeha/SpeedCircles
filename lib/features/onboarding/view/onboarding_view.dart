import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/features/onboarding/controller/onboarding_controller.dart';
import 'widgets/next_button_widget.dart';
import 'widgets/onboarding_body_widget.dart';
import 'widgets/onboarding_indicator_generator.dart';
import 'widgets/skip_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController = Get.find();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
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
              )),
              Row(
                children: [
                  const SkipWidget(),
                  const Spacer(),
                  const OnboardingIndicatorGenerator(),
                  const Spacer(),
                  NextButtonWidget(onTap: onboardingController.nextPage),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
