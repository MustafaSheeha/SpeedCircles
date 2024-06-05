import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/routes/app_route_names.dart';
import 'package:speedcircles/core/widgets/logo_widget.dart';
import 'package:speedcircles/features/auth/login/view/widgets/new_account_widget.dart';
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
              VerticalSpace(Get.height * 0.04),
              const LoginBodyWidget(),
              VerticalSpace(Get.height * 0.04),
               NewAccountWidget(
                onPressed: ()=>Get.offNamed(AppRouteNames.register),
              ),
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
