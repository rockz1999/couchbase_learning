import 'dart:developer';

import 'package:cbl/cbl.dart';
import 'package:couchbash_login/db/database_manager.dart';
import 'package:couchbash_login/models/user_model/user_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_state.dart';

class HomeStateNotifier extends StateNotifier<HomeScreenState> {
  HomeStateNotifier(this.ref) : super(const HomeScreenState());
  final Ref ref;

  void save(String name, String email, String password) async {
    state = state.copyWith(isSaving: true);
    final user = UserModel(email: email, name: name, password: password);
    final userDoc = MutableDocument.withId(
      email,
      user.toJson(),
    );
    try {
      final currentUser =
          await DatabaseManager().userDatabase.saveDocument(userDoc);
      if (currentUser) {
        log('New User Homeed $email', name: 'REGISTER');
      }
    } catch (e) {
      log('Error while registering $email', name: 'REGISTER', error: e);
    } finally {
      if (mounted) {
        state = state.copyWith(isSaving: false);
      }
    }
  }
}
