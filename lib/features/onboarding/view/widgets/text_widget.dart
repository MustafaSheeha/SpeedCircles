import 'package:flutter/material.dart';
import 'package:speedcircles/core/utils/app_text_styles.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.onTap, this.style,
  });
  final String text;
  final void Function()? onTap;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style:style ?? AppTextStyles.gabrielaPrimaryBold20,
      ),
    );
  }
}
