import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_strings.dart';
import 'package:speedcircles/features/auth/functions/handle_firebase_auth_exception.dart';
import 'package:speedcircles/features/auth/model/user_model.dart';
import 'package:speedcircles/features/auth/services/auth_service.dart';

class RegisterController extends GetxController {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _authService = AuthService.to;

  final UserModel userModel = UserModel();
  register() async {
    try {
      userModel.fullName = fullNameController.text;
      userModel.email = emailController.text;
      userModel.password = passwordController.text;
      userModel.confirmPassword = confirmPasswordController.text;
      await _authService.createUserWithEmailAndPassword(
          email: userModel.email!, password: userModel.password!);
      Get.snackbar(
          AppStrings.success, AppStrings.yourAccountWasSuccessfullyCreated);
      log(AppStrings.yourAccountWasSuccessfullyCreated);
    } on FirebaseAuthException catch (e) {
      handleFirebaseAuthException(e);
    } catch (e) {
      Get.snackbar(AppStrings.authenticationError, e.toString());
      log(e.toString());
    }
  }
}
