import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/vertical_space.dart';
import 'auth_button.dart';

class AuthFormWidget extends StatelessWidget {
  const AuthFormWidget(
      {super.key, required this.textFormFieldList, this.onPressed});
  final Widget textFormFieldList;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        textFormFieldList,
        VerticalSpace(Get.height * 0.01),
        AuthButton(
          onPressed: onPressed,
        )
      ],
    ));
  }
}
