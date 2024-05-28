
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';

class VarietyAndReasonablePriceDescriptionWidget extends StatelessWidget {
  const VarietyAndReasonablePriceDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.varietyAndReasonablePriceDescription,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: AppColors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: AppStrings.gabrielaFont),
    );
  }
}
