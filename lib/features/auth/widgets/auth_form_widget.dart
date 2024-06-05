import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/vertical_space.dart';
import 'auth_button.dart';

class AuthFormWidget extends StatelessWidget {
  const AuthFormWidget({super.key, required this.textFormFieldList});
  final Widget textFormFieldList;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        textFormFieldList,
        VerticalSpace(Get.height * 0.02),
        const AuthButton()
      ],
    ));
  }
}
