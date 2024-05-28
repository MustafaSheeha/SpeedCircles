import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_colors.dart';
import 'package:speedcircles/features/onboarding/controller/onboarding_controller.dart';
import 'widgets/next_button_widget.dart';
import 'widgets/onboarding_body_widget.dart';
import 'widgets/skip_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  GetBuilder<OnboardingController>(builder: (controller) {
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
                  }),
                  const Spacer(),
                  const NextButtonWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    super.key,
    this.isActive = false,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 10 : 5,
      width: isActive ? 40 : 20,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: isActive ? AppColors.primary : AppColors.grey),
    );
  }
}
