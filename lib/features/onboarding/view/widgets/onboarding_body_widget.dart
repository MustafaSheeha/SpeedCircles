
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OnboardingImageWidget(image: image),
        VarietyAndReasonablePriceWidget(title: title),
        VarietyAndReasonablePriceDescriptionWidget(description: description),
      ],
    );
  }
}