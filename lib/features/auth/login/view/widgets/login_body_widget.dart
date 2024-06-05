import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_colors.dart';
import 'package:speedcircles/features/auth/login/view/widgets/login_form_widget.dart';
import 'package:speedcircles/features/auth/login/view/widgets/welcome_login_widget.dart';
import '../../../../../core/widgets/vertical_space.dart';
import '../../../widgets/auth_container_widget.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthContainerWidget(
      welcomeLoginWidget: WelcomeLoginWidget(),
      formWidget: LoginFormWidget(),
    );
  }
}
