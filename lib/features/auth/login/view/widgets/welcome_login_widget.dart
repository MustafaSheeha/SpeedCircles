import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/vertical_space.dart';
import '../../../../onboarding/view/widgets/text_widget.dart';

class WelcomeLoginWidget extends StatelessWidget {
  const WelcomeLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          text: AppStrings.welcome,
          style: AppTextStyles.gabrielaPrimaryBold20
              .copyWith(color: AppColors.grey),
        ),
        VerticalSpace(Get.height * 0.005),
        TextWidget(
          text: AppStrings.loginToContinue,
          style: AppTextStyles.gabrielaPrimaryBold20.copyWith(
              color: AppColors.grey, fontWeight: FontWeight.w300, fontSize: 16),
        ),
      ],
    );
  }
}
