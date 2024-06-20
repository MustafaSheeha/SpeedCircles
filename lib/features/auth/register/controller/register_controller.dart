import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_strings.dart';
import 'package:speedcircles/features/auth/model/user_model.dart';
import 'package:speedcircles/features/auth/services/auth_service.dart';

class RegisterController extends GetxController {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final UserModel userModel = UserModel();
  register() async {
    try {
      userModel.fullName = fullNameController.text;
      userModel.email = emailController.text;
      userModel.password = passwordController.text;
      userModel.confirmPassword = confirmPasswordController.text;
      await AuthService.to.createUserWithEmailAndPassword(
          email: userModel.email!, password: userModel.password!);
      Get.snackbar(
          AppStrings.success, AppStrings.yourAccountWasSuccessfullyCreated);
      log(AppStrings.yourAccountWasSuccessfullyCreated);
    } on FirebaseAuthException catch (e) {
      _handleFirebaseAuthException(e);
    } catch (e) {
      Get.snackbar(AppStrings.authenticationError, e.toString());
      log(e.toString());
    }
  }

  void _handleFirebaseAuthException(FirebaseAuthException e) {
    String errorMessage;
    switch (e.code) {
      case AppStrings.userNotFound:
        errorMessage = AppStrings.noUserFoundForThatEmail;
        break;
      case AppStrings.wrongPassword:
        errorMessage = AppStrings.wrongPasswordProvidedForThatUser;
        break;
      case AppStrings.invalidEmail:
        errorMessage = AppStrings.theEmailAddressIsBadlyFormatted;
        break;
      case AppStrings.userDisabled:
        errorMessage =
            AppStrings.theUserAccountHasBeenDisabledByAnAdministrator;
        break;
      case AppStrings.tooManyRequests:
        errorMessage = AppStrings.tooManyRequestsTryAgainLater;
        break;
      case AppStrings.operationNotAllowed:
        errorMessage = AppStrings.emailPasswordAccountsAreNotEnabled;
        break;
      case AppStrings.weakPassword:
        errorMessage = AppStrings.thePasswordIsTooWeak;
        break;
      case AppStrings.emailAlreadyInUse:
        errorMessage = AppStrings.theAccountAlreadyExistsForThatEmail;
        break;
      case AppStrings.networkRequestFailed:
        errorMessage =
            AppStrings.networkRequestFailedPleaseCheckYourInternetConnection;
        break;
      default:
        errorMessage = AppStrings.anUndefinedError;
    }
    Get.snackbar(AppStrings.authenticationError, errorMessage);
  }
}
