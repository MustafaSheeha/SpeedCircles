import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/features/auth/widgets/auth_form_widget.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/vertical_space.dart';
import '../../../widgets/auth_container_widget.dart';
import '../../../widgets/auth_template_widget.dart';
import '../../../widgets/welcome_widget.dart';

class RegisterBodyWidget extends StatelessWidget {
  const RegisterBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthTemplateWidget(
      authTemplateBody: AuthContainerWidget(
          welcomeWidget: const WelcomeWidget(
            title: AppStrings.createAccount,
            suTitle: AppStrings.exploreMore,
          ),
          formWidget: AuthFormWidget(
            textFormFieldList: Column(
              children: [
                const CustomTextFormField(
                  obscureText: false,
                  labelText: AppStrings.fullName,
                  prefixIcon: Icon(Icons.person_outline_outlined),
                ),
                VerticalSpace(Get.height * 0.012),
                const CustomTextFormField(
                  obscureText: false,
                  labelText: AppStrings.email,
                  prefixIcon: Icon(Icons.alternate_email_outlined),
                ),
                VerticalSpace(Get.height * 0.012),
                const CustomTextFormField(
                  obscureText: true,
                  labelText: AppStrings.password,
                  prefixIcon: Icon(Icons.lock_open_outlined),
                ),
                VerticalSpace(Get.height * 0.012),
                const CustomTextFormField(
                  obscureText: true,
                  labelText: AppStrings.confirmPassword,
                  prefixIcon: Icon(Icons.lock_open_outlined),
                ),
              ],
            ),
          )),
    );
  }
}
