import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_colors.dart';

import 'widgets/background_clipper.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          BackgroundClipper(),
          Spacer(),
          BackgroundClipper(
            quarterTurns: 2,
          ),
        ],
      ),
    );
  }
}
