import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/widgets/logo_widget.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'widgets/background_clipper.dart';
import 'widgets/login_body_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SizedBox(
          height: Get.height,
          child: Column(
            children: [
              const BackgroundClipper(),
              const LogoWidget(),
              VerticalSpace(Get.height * 0.05),
              const LoginBodyWidget(),
              const Spacer(),
              const BackgroundClipper(
                quarterTurns: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
