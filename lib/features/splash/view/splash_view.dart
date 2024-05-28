import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/logo_widget.dart';
import '../../../core/widgets/slogan_widget.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LogoWidget(),
            GetBuilder<SplashController>(
                builder: (controller) => FadeTransition(
                      opacity: controller.animation,
                      child: const SloganWidget(),
                    )),
          ],
        ),
      ),
    );
  }
}
