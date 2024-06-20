import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:speedcircles/core/constants/app_strings.dart';

void handleFirebaseAuthException(FirebaseAuthException e) {
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
      case AppStrings.invalidCredential:
        errorMessage =
            AppStrings.theSuppliedAuthCredentialIsIncorrect;
        break;
      default:
        errorMessage = AppStrings.anUndefinedError;
    }
    Get.snackbar(AppStrings.authenticationError, errorMessage);
  }
