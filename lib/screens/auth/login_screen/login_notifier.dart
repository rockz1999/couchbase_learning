import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'login_state.dart';

class LoginScreenStateNotifier extends StateNotifier<LoginScreenState> {
  LoginScreenStateNotifier(this.ref) : super(const LoginScreenState());
  final Ref ref;
}
