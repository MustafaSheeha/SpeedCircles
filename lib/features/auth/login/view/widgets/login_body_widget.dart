import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_colors.dart';
import 'package:speedcircles/features/auth/login/view/widgets/login_form_widget.dart';
import 'package:speedcircles/features/auth/login/view/widgets/welcome_login_widget.dart';
import '../../../../../core/widgets/vertical_space.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          VerticalSpace(Get.height * 0.05),
          const WelcomeLoginWidget(),
          VerticalSpace(Get.height * 0.05),
          const LoginFormWidget(),
          VerticalSpace(Get.height * 0.05),
        ],
      ),
    );
  }
}
