import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/widgets/vertical_space.dart';
import 'package:speedcircles/features/onboarding/controller/onboarding_controller.dart';
import 'widgets/onboarding_indicator_generator.dart';
import 'widgets/onboarding_navigation_bar.dart';
import 'widgets/onboarding_page_viewer.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController = Get.find();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SizedBox(
            height: Get.height,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const OnboardingPageViewer(),
                const OnboardingIndicatorGenerator(),
                const VerticalSpace(20),
                OnboardingNavigationBar(
                    onboardingController: onboardingController)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
