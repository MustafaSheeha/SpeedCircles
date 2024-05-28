import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
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
