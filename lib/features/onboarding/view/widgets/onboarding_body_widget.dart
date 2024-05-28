
import 'package:flutter/material.dart';
import 'onboarding_image_widget.dart';
import 'variety_and_reasonable_price_description_widget.dart';
import 'variety_and_reasonable_price_widget.dart';

class OnboardingBodyWidget extends StatelessWidget {
  const OnboardingBodyWidget({super.key,  this.image, this.title, this.description});
final String? image,title,description;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Spacer(flex: 3),
        OnboardingImageWidget(image: image),
        const Spacer(flex: 2),
        VarietyAndReasonablePriceWidget(title: title),
        const Spacer(),
        VarietyAndReasonablePriceDescriptionWidget(description: description),
        const Spacer(flex: 3),
      ],
    );
  }
}