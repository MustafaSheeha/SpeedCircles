import 'package:get/get.dart';
import 'package:speedcircles/features/auth/bindings/auth_binding.dart';
import 'package:speedcircles/features/auth/login/view/login_view.dart';


void navigateToLoginView() {
  Get.off(() => const LoginView(),binding: AuthBinding());
}
