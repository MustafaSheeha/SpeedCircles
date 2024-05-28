import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    super.key, this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            decoration: const BoxDecoration(
                color: AppColors.primary, shape: BoxShape.circle),
            child: const Icon(
              Icons.east_outlined,
              color: AppColors.white,
              size: 40,
            )));
  }
}
