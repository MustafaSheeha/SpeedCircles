import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';

class BackgroundClipper extends StatelessWidget {
  const BackgroundClipper({
    super.key,
    this.quarterTurns = 0,
  });
  final int? quarterTurns;
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: quarterTurns!,
      child: ClipPath(
        clipper: ContainerClipper(),
        child: Container(
          height: Get.height * 0.15,
          color: AppColors.primary,
        ),
      ),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 4,
      size.height * 0.1,
      size.width,
      0,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
