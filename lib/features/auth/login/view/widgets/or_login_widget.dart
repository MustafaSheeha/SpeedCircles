import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../onboarding/view/widgets/text_widget.dart';

class OrLoginWidget extends StatelessWidget {
  const OrLoginWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Get.width * 0.2,
            child: Divider(
              endIndent: Get.width * 0.05,
              color: AppColors.grey,
              thickness: 1.5,
              height: 50,
            ),
          ),
          TextWidget(
            text: AppStrings.orLoginWith,
            style: AppTextStyles.gabrielaPrimaryBold20
                .copyWith(color: AppColors.grey),
          ),
          SizedBox(
            width: Get.width * 0.2,
            child: Divider(
              indent: Get.width * 0.05,
              color: AppColors.grey,
              thickness: 1.5,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
