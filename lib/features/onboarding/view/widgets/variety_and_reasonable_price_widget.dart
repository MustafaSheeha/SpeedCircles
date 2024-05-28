import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';

class VarietyAndReasonablePriceWidget extends StatelessWidget {
  const VarietyAndReasonablePriceWidget({
    super.key,
    this.title,
  });
  final String? title;
  @override
  Widget build(BuildContext context) {
    return  Text(
      title ?? '',
      textAlign: TextAlign.center,
      style:const TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          fontFamily: AppStrings.gabrielaFont),
    );
  }
}
