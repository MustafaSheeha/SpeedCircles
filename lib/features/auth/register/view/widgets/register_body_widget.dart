import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/features/auth/register/controller/register_controller.dart';
import 'package:speedcircles/features/auth/widgets/auth_form_widget.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/vertical_space.dart';
import '../../../widgets/auth_container_widget.dart';
import '../../../widgets/auth_template_widget.dart';
import '../../../widgets/welcome_widget.dart';

class RegisterBodyWidget extends GetView<RegisterController> {
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
            onPressed: controller.register,
            textFormFieldList: Column(
              children: [
                CustomTextFormField(
                  controller: controller.fullNameController,
                  obscureText: false,
                  labelText: AppStrings.fullName,
                  prefixIcon: const Icon(Icons.person_outline_outlined),
                ),
                VerticalSpace(Get.height * 0.012),
                CustomTextFormField(
                  controller: controller.emailController,
                  obscureText: false,
                  labelText: AppStrings.email,
                  prefixIcon: const Icon(Icons.alternate_email_outlined),
                ),
                VerticalSpace(Get.height * 0.012),
                CustomTextFormField(
                  controller: controller.passwordController,
                  obscureText: true,
                  labelText: AppStrings.password,
                  prefixIcon: const Icon(Icons.lock_open_outlined),
                ),
                VerticalSpace(Get.height * 0.012),
                CustomTextFormField(
                  controller: controller.confirmPasswordController,
                  obscureText: true,
                  labelText: AppStrings.confirmPassword,
                  prefixIcon: const Icon(Icons.lock_open_outlined),
                ),
              ],
            ),
          )),
    );
  }
}
