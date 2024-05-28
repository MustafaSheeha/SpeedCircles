import 'package:get/get.dart';
import 'package:speedcircles/core/routes/app_routes.dart';
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
  ];
}
