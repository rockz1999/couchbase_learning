// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginScreenStateTearOff {
  const _$LoginScreenStateTearOff();

  _Default call({bool isLoginingInProcess = false}) {
    return _Default(
      isLoginingInProcess: isLoginingInProcess,
    );
  }
}

/// @nodoc
const $LoginScreenState = _$LoginScreenStateTearOff();

/// @nodoc
mixin _$LoginScreenState {
  bool get isLoginingInProcess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginScreenStateCopyWith<LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res>;
  $Res call({bool isLoginingInProcess});
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  final LoginScreenState _value;
  // ignore: unused_field
  final $Res Function(LoginScreenState) _then;

  @override
  $Res call({
    Object? isLoginingInProcess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoginingInProcess: isLoginingInProcess == freezed
          ? _value.isLoginingInProcess
          : isLoginingInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoginingInProcess});
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$LoginScreenStateCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? isLoginingInProcess = freezed,
  }) {
    return _then(_Default(
      isLoginingInProcess: isLoginingInProcess == freezed
          ? _value.isLoginingInProcess
          : isLoginingInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Default implements _Default {
  const _$_Default({this.isLoginingInProcess = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoginingInProcess;

  @override
  String toString() {
    return 'LoginScreenState(isLoginingInProcess: $isLoginingInProcess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Default &&
            (identical(other.isLoginingInProcess, isLoginingInProcess) ||
                other.isLoginingInProcess == isLoginingInProcess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoginingInProcess);

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);
}

abstract class _Default implements LoginScreenState {
  const factory _Default({bool isLoginingInProcess}) = _$_Default;

  @override
  bool get isLoginingInProcess;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
