import 'package:flutter/material.dart';
import 'package:speedcircles/core/utils/app_text_styles.dart';


class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text, this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: AppTextStyles.gabrielaPrimaryBold20,
      ),
    );
  }
}
