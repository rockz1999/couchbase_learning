import 'package:couchbash_login/screens/auth/login_screen/login_notifier.dart';
import 'package:couchbash_login/screens/auth/login_screen/login_state.dart';
import 'package:couchbash_login/screens/auth/register_screen/register_notifier.dart';
import 'package:couchbash_login/screens/auth/register_screen/register_screen.dart';
import 'package:couchbash_login/screens/auth/register_screen/register_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginScreenProvider =
    StateNotifierProvider<LoginScreenStateNotifier, LoginScreenState>(
        (ref) => LoginScreenStateNotifier(ref));

final registerScreenProvider =
    StateNotifierProvider<RegisterStateNotifier, RegisterScreenState>(
        (ref) => RegisterStateNotifier(ref));
