import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/features/auth/model/user_model.dart';
import 'package:speedcircles/features/auth/services/auth_service.dart';

class RegisterController extends GetxController {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final UserModel userModel = UserModel();
  register() async {
    userModel.fullName = fullNameController.text;
    userModel.email = emailController.text;
    userModel.password = passwordController.text;
    userModel.confirmPassword = confirmPasswordController.text;
    await AuthService.to.createUserWithEmailAndPassword(
        email: userModel.email!, password: userModel.password!);
  }
}
