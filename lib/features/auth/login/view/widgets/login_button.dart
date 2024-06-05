import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key, this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primary,
      radius: 30,
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(Icons.east, color: AppColors.white, size: 45),
      ),
    );
  }
}