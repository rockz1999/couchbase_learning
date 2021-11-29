import 'dart:developer';

import 'package:cbl/cbl.dart';
import 'package:couchbash_login/db/database_manager.dart';
import 'package:couchbash_login/db/n1ql_query_functions.dart';
import 'package:couchbash_login/screens/auth/register_screen/register_screen.dart';
import 'package:couchbash_login/screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'login_state.dart';

class LoginScreenStateNotifier extends StateNotifier<LoginScreenState> {
  LoginScreenStateNotifier(this.ref) : super(const LoginScreenState());
  final Ref ref;

  void goToRegister() {
    Get.to(() => const RegisterScreen());
  }

  void login(String email, String password) async {
    final results = await DatabaseQueries().getUserByEmailPass(email, password);
    if (results != null) {
      Get.to(() => const HomeScreen());
      log('Login Sucess, UserExists $email', name: 'LOGIN');
    } else {
      Get.snackbar('Log-in Error', 'No account associated to this user');
    }
  }
}
