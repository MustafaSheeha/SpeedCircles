import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_strings.dart';

abstract class AppTextStyles {
  static const gabrielaPrimaryBold20 = TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      fontFamily: AppStrings.gabrielaFont);
}
