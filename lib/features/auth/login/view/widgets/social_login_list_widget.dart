
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';
import 'social_login_widget.dart';

class SocialLoginListWidget extends StatelessWidget {
  const SocialLoginListWidget({
    super.key,
    required this.socialAccountsOnTap,
  });
  final List<void Function()?> socialAccountsOnTap;
  @override
  Widget build(BuildContext context) {
    List<String> socialAccounts = [
      AppAssets.imagesGoogle,
      AppAssets.imagesFacebook,
      AppAssets.imagesTwitter,
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(
          socialAccounts.length,
          (index) => SocialLoginWidget(
            onTap: socialAccountsOnTap[index],
            socialAccount: socialAccounts[index],
          ),
        )
      ],
    );
  }
}
