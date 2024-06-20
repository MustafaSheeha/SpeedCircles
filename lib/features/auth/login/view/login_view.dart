import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/routes/app_route_names.dart';
import 'package:speedcircles/features/auth/login/controller/login_controller.dart';
import 'package:speedcircles/features/auth/widgets/auth_template_widget.dart';
import 'package:speedcircles/features/auth/login/view/widgets/new_account_widget.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'widgets/login_body_widget.dart';
import 'widgets/or_login_widget.dart';
import 'widgets/social_login_list_widget.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthTemplateWidget(
            authTemplateBody: Column(
      children: [
        const LoginBodyWidget(),
        VerticalSpace(Get.height * 0.02),
        NewAccountWidget(onPressed: () => Get.toNamed(AppRouteNames.register)),
        const OrLoginWidget(),
        SocialLoginListWidget(
          socialAccountsOnTap: [
            controller.loginWithGoogle,
            null,
            null,
          ],
        )
      ],
    )));
  }
}
