import 'package:get/get.dart';
import 'package:speedcircles/features/auth/login/view/login_view.dart';


void navigateToLoginView() {
  Get.off(() => const LoginView());
}
