
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';

class SkipWidget extends StatelessWidget {
  const SkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.skip,
      style: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: AppStrings.gabrielaFont),
    );
  }
}
