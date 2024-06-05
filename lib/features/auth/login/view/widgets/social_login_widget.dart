
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_colors.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({
    super.key,
    this.onTap,
    required this.socialAccount,
  });
  final String socialAccount;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: Get.height * 0.036,
        backgroundColor: AppColors.lightGrey,
        child: Image.asset(
          socialAccount,
          height: Get.height * 0.05,
        ),
      ),
    );
  }
}
