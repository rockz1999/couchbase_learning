// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterScreenStateTearOff {
  const _$RegisterScreenStateTearOff();

  _Default call({bool isRegisterInProcess = false}) {
    return _Default(
      isRegisterInProcess: isRegisterInProcess,
    );
  }
}

/// @nodoc
const $RegisterScreenState = _$RegisterScreenStateTearOff();

/// @nodoc
mixin _$RegisterScreenState {
  bool get isRegisterInProcess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterScreenStateCopyWith<RegisterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenStateCopyWith<$Res> {
  factory $RegisterScreenStateCopyWith(
          RegisterScreenState value, $Res Function(RegisterScreenState) then) =
      _$RegisterScreenStateCopyWithImpl<$Res>;
  $Res call({bool isRegisterInProcess});
}

/// @nodoc
class _$RegisterScreenStateCopyWithImpl<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  _$RegisterScreenStateCopyWithImpl(this._value, this._then);

  final RegisterScreenState _value;
  // ignore: unused_field
  final $Res Function(RegisterScreenState) _then;

  @override
  $Res call({
    Object? isRegisterInProcess = freezed,
  }) {
    return _then(_value.copyWith(
      isRegisterInProcess: isRegisterInProcess == freezed
          ? _value.isRegisterInProcess
          : isRegisterInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call({bool isRegisterInProcess});
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? isRegisterInProcess = freezed,
  }) {
    return _then(_Default(
      isRegisterInProcess: isRegisterInProcess == freezed
          ? _value.isRegisterInProcess
          : isRegisterInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Default implements _Default {
  const _$_Default({this.isRegisterInProcess = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isRegisterInProcess;

  @override
  String toString() {
    return 'RegisterScreenState(isRegisterInProcess: $isRegisterInProcess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Default &&
            (identical(other.isRegisterInProcess, isRegisterInProcess) ||
                other.isRegisterInProcess == isRegisterInProcess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRegisterInProcess);

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);
}

abstract class _Default implements RegisterScreenState {
  const factory _Default({bool isRegisterInProcess}) = _$_Default;

  @override
  bool get isRegisterInProcess;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
