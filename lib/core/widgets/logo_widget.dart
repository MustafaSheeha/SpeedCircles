import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_assets.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.imagesLogoNoBackground,width: Get.width * 0.7,);
  }
}
