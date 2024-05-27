import 'package:flutter/material.dart';

import '../constants/app_assets.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.logoNoBackground);
  }
}
