import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/vertical_space.dart';
import '../../onboarding/view/widgets/text_widget.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key, required this.title, required this.suTitle});
  final String title;
  final String suTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          text: title,
          style: AppTextStyles.gabrielaPrimaryBold20
              .copyWith(color: AppColors.grey),
        ),
        VerticalSpace(Get.height * 0.005),
        TextWidget(
          text: suTitle,
          style: AppTextStyles.gabrielaPrimaryBold20.copyWith(
              color: AppColors.grey, fontWeight: FontWeight.w300, fontSize: 16),
        ),
      ],
    );
  }
}
