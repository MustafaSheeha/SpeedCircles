import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/logo_widget.dart';
import '../../../core/widgets/vertical_space.dart';
import 'background_clipper.dart';

class AuthTemplateWidget extends StatelessWidget {
  const AuthTemplateWidget({super.key, required this.authTemplateBody});
  final Widget authTemplateBody;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: SizedBox(
        height: Get.height,
        child: Column(
          children: [
            const BackgroundClipper(),
            const LogoWidget(),
            VerticalSpace(Get.height * 0.04),
            authTemplateBody,
            const Spacer(),
            const BackgroundClipper(
              quarterTurns: 2,
            ),
          ],
        ),
      ),
    );
  }
}
