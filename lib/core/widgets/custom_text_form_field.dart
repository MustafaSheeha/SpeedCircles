import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      this.labelText,
      this.prefixIcon,
      this.controller,
      required this.obscureText,
      this.validator});
  final String? labelText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: widget.validator,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        controller: widget.controller,
        obscureText: widget.obscureText ? isVisible : widget.obscureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: AppTextStyles.gabrielaPrimaryBold20
              .copyWith(color: AppColors.grey, fontSize: 16),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.obscureText
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon:
                      Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                )
              : null,
          enabledBorder: customOutlineInputBorder(),
          focusedBorder: customOutlineInputBorder(),
          errorBorder: customOutlineInputBorder(),
          focusedErrorBorder: customOutlineInputBorder(),
        ));
  }

  OutlineInputBorder customOutlineInputBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(22)));
  }
}
