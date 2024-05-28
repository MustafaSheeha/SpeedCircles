import 'package:flutter/material.dart';

import '../constants/app_strings.dart';

class SloganWidget extends StatelessWidget {
  const SloganWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.slogan,
      style: TextStyle(
          fontSize: 26,
          fontFamily: AppStrings.hitchHikeFont,
          fontWeight: FontWeight.bold),
    );
  }
}
