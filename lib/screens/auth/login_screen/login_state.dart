import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState({
    @Default(false) bool isLoginingInProcess,
  }) = _Default;
}
