import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/features/auth/login/view/widgets/auth_form_widget.dart';
import 'package:speedcircles/features/auth/widgets/welcome_widget.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/vertical_space.dart';
import '../../../widgets/auth_container_widget.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthContainerWidget(
      welcomeWidget: const WelcomeWidget(
        title: AppStrings.welcome,
        suTitle: AppStrings.loginToContinue,
      ),
      formWidget: AuthFormWidget(
        textFormFieldList: Column(
          children: [
            const CustomTextFormField(
              obscureText: false,
              labelText: AppStrings.email,
              prefixIcon: Icon(Icons.alternate_email_outlined),
            ),
            VerticalSpace(Get.height * 0.02),
            const CustomTextFormField(
              obscureText: true,
              labelText: AppStrings.password,
              prefixIcon: Icon(Icons.lock_open_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
