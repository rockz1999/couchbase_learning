import 'package:couchbash_login/screens/auth/register_screen/register_screen.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'login_state.dart';

class LoginScreenStateNotifier extends StateNotifier<LoginScreenState> {
  LoginScreenStateNotifier(this.ref) : super(const LoginScreenState());
  final Ref ref;

  void goToRegister() {
    Get.to(() => const RegisterScreen());
  }
}
