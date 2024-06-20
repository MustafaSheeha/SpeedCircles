import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_strings.dart';
import 'package:speedcircles/features/auth/functions/handle_firebase_auth_exception.dart';
import 'package:speedcircles/features/auth/model/user_model.dart';
import 'package:speedcircles/features/auth/services/auth_service.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _authService = AuthService.to;

  final UserModel userModel = UserModel();

  login() async {
    try {
      userModel.email = emailController.text;
      userModel.password = passwordController.text;
      await _authService.signInWithEmailAndPassword(
          email: userModel.email!, password: userModel.password!);
      Get.snackbar(AppStrings.success, AppStrings.successfulLogin);
      log(AppStrings.successfulLogin);
    } on FirebaseAuthException catch (e) {
      handleFirebaseAuthException(e);
    } catch (e) {
      Get.snackbar(AppStrings.authenticationError, e.toString());
      log(e.toString());
    }
  }

  loginWithGoogle() async {
    try {
      await _authService.signInWithGoogle();
      Get.snackbar(AppStrings.success, AppStrings.successfulLogin);
      log(AppStrings.successfulLogin);
    } catch (e) {
      Get.snackbar(AppStrings.authenticationError, e.toString());
      log(e.toString());
    }
  }
}
