import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterScreenState with _$RegisterScreenState {
  const factory RegisterScreenState({
    @Default(false) bool isRegisterInProcess,
  }) = _Default;
}
