import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/vertical_space.dart';

class AuthContainerWidget extends StatelessWidget {
  const AuthContainerWidget({
    super.key,
    required this.welcomeWidget,
    required this.formWidget,
  });
  final Widget welcomeWidget;
  final Widget formWidget;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary),
          color: AppColors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.3),
              blurRadius: 2,
              spreadRadius: 3,
              offset: const Offset(2, 5),
            )
          ],
        ),
        child: Column(
          children: [
            VerticalSpace(Get.height * 0.04),
            welcomeWidget,
            VerticalSpace(Get.height * 0.04),
            formWidget,
            VerticalSpace(Get.height * 0.015),
          ],
        ),
      ),
    );
  }
}
