import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';

class VarietyAndReasonablePriceDescriptionWidget extends StatelessWidget {
  const VarietyAndReasonablePriceDescriptionWidget({
    super.key, this.description,
  });
  final String? description;
  @override
  Widget build(BuildContext context) {
    return  Text(
      description ?? '',
      textAlign: TextAlign.center,
      style:const TextStyle(
          color: AppColors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: AppStrings.gabrielaFont),
    );
  }
}
