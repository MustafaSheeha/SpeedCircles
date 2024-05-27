import 'package:flutter/material.dart';
import 'package:speedcircles/core/constants/app_assets.dart';
import 'package:speedcircles/core/constants/app_strings.dart';

import '../../../core/widgets/logo_widget.dart';
import '../../../core/widgets/slogan_widget.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LogoWidget(),
          SloganWidget(),
        ],
      ),
    );
  }
}
