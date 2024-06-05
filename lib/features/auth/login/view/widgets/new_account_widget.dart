import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/vertical_space.dart';
import '../../../../onboarding/view/widgets/text_widget.dart';

class NewAccountWidget extends StatelessWidget {
  const NewAccountWidget({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextWidget(
        text: AppStrings.doNotHaveAnAccount,
        style:
            AppTextStyles.gabrielaPrimaryBold20.copyWith(color: AppColors.grey),
      ),
      VerticalSpace(Get.height * 0.003),
      ElevatedButton(
          onPressed: onPressed,
          child: const TextWidget(text: AppStrings.registerNow)),
    ]);
  }
}
