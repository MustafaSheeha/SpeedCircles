import 'package:flutter/material.dart';
import 'package:speedcircles/core/constants/app_colors.dart';
import 'package:speedcircles/core/constants/app_strings.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
            decoration: const InputDecoration(
          labelText: AppStrings.email,
          prefixIcon: Icon(
            Icons.alternate_email_outlined,
            color: AppColors.grey,
          ),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
            
          )
        ),
      ],
    ));
  }
}
