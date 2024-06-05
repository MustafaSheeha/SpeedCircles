import 'package:flutter/material.dart';
import 'package:speedcircles/features/auth/login/view/widgets/login_form_widget.dart';
import 'package:speedcircles/features/auth/login/view/widgets/welcome_login_widget.dart';
import '../../../widgets/auth_container_widget.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthContainerWidget(
      welcomeWidget: WelcomeLoginWidget(),
      formWidget: LoginFormWidget(),
    );
  }
}
