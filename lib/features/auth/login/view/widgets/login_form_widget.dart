import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_strings.dart';
import 'package:speedcircles/core/widgets/custom_text_form_field.dart';

import '../../../../../core/widgets/vertical_space.dart';
import 'login_button.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
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
        VerticalSpace(Get.height * 0.02),
        const LoginButton()
      ],
    ));
  }
}
