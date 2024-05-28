import 'package:flutter/material.dart';

class OnboardingImageWidget extends StatelessWidget {
  const OnboardingImageWidget({
    super.key,
    this.image,
  });
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image ?? '',
      height: 200,
    );
  }
}
