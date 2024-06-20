import 'package:get/get.dart';
import 'package:speedcircles/features/auth/login/controller/login_controller.dart';
import 'package:speedcircles/features/auth/register/controller/register_controller.dart';
import 'package:speedcircles/features/auth/services/auth_service.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthService());
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => LoginController());
  }
}
