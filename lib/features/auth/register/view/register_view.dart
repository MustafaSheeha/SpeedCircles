import 'package:flutter/material.dart';
import 'package:speedcircles/features/auth/widgets/auth_template_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AuthTemplateWidget(
      authTemplateBody: Column(),
    ));
  }
}
