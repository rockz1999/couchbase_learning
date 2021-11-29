import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'register_state.dart';

class RegisterStateNotifier extends StateNotifier<RegisterScreenState> {
  RegisterStateNotifier(this.ref) : super(const RegisterScreenState());
  final Ref ref;
}
