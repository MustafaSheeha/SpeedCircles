
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

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
