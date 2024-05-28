
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';

class VarietyAndReasonablePriceWidget extends StatelessWidget {
  const VarietyAndReasonablePriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.varietyAndReasonablePrice,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          fontFamily: AppStrings.gabrielaFont),
    );
  }
}
