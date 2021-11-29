import 'package:couchbash_login/models/user_model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default(false) bool isSaving,
    UserModel? userModel,
  }) = _Default;
}
