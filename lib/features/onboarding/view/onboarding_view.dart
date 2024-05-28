import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/features/onboarding/controller/onboarding_controller.dart';
import 'widgets/next_button_widget.dart';
import 'widgets/onboarding_body_widget.dart';
import 'widgets/skip_widget.dart';
import 'widgets/variety_and_reasonable_price_description_widget.dart';
import 'widgets/variety_and_reasonable_price_widget.dart';

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
                  itemCount: controller.onboardingModelList.length,
                  itemBuilder: (context, index) {
                    return OnboardingBodyWidget(
                      image: controller.onboardingModelList[index].image,
                      title:controller.onboardingModelList[index].title ,
                      description:controller.onboardingModelList[index].description ,
                    );
                  },
                ),
              )),
              const Row(
                children: [
                  SkipWidget(),
                  NextButtonWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
