import 'package:get/get.dart';
import 'package:speedcircles/core/routes/app_route_names.dart';
import 'package:speedcircles/features/auth/login/view/login_view.dart';
import 'package:speedcircles/features/auth/register/view/register_view.dart';
import 'package:speedcircles/features/onboarding/bindings/onboarding_binding.dart';
import 'package:speedcircles/features/onboarding/view/onboarding_view.dart';
import 'package:speedcircles/features/splash/bindings/splash_binding.dart';

import '../../features/splash/view/splash_view.dart';

Transition defaultTransition = Transition.zoom;
Duration defaultTransitionDuration = const Duration(milliseconds: 300);

abstract class AppPages {
  static const initial = AppRouteNames.splash;

  static final routesList = [
    GetPage(
      name: AppRouteNames.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
      transition: defaultTransition,
      transitionDuration: defaultTransitionDuration,
    ),
    GetPage(
      name: AppRouteNames.onboarding,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
      transition: defaultTransition,
      transitionDuration: defaultTransitionDuration,
    ),
    GetPage(
      name: AppRouteNames.login,
      page: ()=> const LoginView(),
      transition: defaultTransition,
      transitionDuration: defaultTransitionDuration,
    ),
    GetPage(
      name: AppRouteNames.register,
      page: ()=> const RegisterView(),
      transition: defaultTransition,
      transitionDuration: defaultTransitionDuration,
    ),
  ];
}
