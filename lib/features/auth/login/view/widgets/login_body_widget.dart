import 'package:flutter/material.dart';
import 'package:speedcircles/features/auth/login/view/widgets/login_form_widget.dart';
import 'package:speedcircles/features/auth/widgets/welcome_widget.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../widgets/auth_container_widget.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthContainerWidget(
      welcomeWidget: WelcomeWidget(
        title: AppStrings.welcome,
        suTitle: AppStrings.loginToContinue,
      ),
      formWidget: LoginFormWidget(),
    );
  }
}
