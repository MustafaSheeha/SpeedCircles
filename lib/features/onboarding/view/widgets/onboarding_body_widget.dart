
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/widgets/vertical_space.dart';
import 'onboarding_image_widget.dart';
import 'variety_and_reasonable_price_description_widget.dart';
import 'variety_and_reasonable_price_widget.dart';

class OnboardingBodyWidget extends StatelessWidget {
  const OnboardingBodyWidget({super.key,  this.image, this.title, this.description});
final String? image,title,description;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnboardingImageWidget(image: image),
        VerticalSpace(Get.height * 0.05),
        VarietyAndReasonablePriceWidget(title: title),
        VerticalSpace(Get.height * 0.05),
        VarietyAndReasonablePriceDescriptionWidget(description: description),
      ],
    );
  }
}