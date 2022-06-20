// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CryptoException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidInputFile,
    required TResult Function() invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidInputFile,
    TResult Function()? invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidInputFile,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoInvalidInputFileException value)
        invalidInputFile,
    required TResult Function(CryptoInvalidKeyException value) invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CryptoInvalidInputFileException value)? invalidInputFile,
    TResult Function(CryptoInvalidKeyException value)? invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoInvalidInputFileException value)? invalidInputFile,
    TResult Function(CryptoInvalidKeyException value)? invalidKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoExceptionCopyWith<$Res> {
  factory $CryptoExceptionCopyWith(
          CryptoException value, $Res Function(CryptoException) then) =
      _$CryptoExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoExceptionCopyWithImpl<$Res>
    implements $CryptoExceptionCopyWith<$Res> {
  _$CryptoExceptionCopyWithImpl(this._value, this._then);

  final CryptoException _value;
  // ignore: unused_field
  final $Res Function(CryptoException) _then;
}

/// @nodoc
abstract class _$$CryptoInvalidInputFileExceptionCopyWith<$Res> {
  factory _$$CryptoInvalidInputFileExceptionCopyWith(
          _$CryptoInvalidInputFileException value,
          $Res Function(_$CryptoInvalidInputFileException) then) =
      __$$CryptoInvalidInputFileExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CryptoInvalidInputFileExceptionCopyWithImpl<$Res>
    extends _$CryptoExceptionCopyWithImpl<$Res>
    implements _$$CryptoInvalidInputFileExceptionCopyWith<$Res> {
  __$$CryptoInvalidInputFileExceptionCopyWithImpl(
      _$CryptoInvalidInputFileException _value,
      $Res Function(_$CryptoInvalidInputFileException) _then)
      : super(_value, (v) => _then(v as _$CryptoInvalidInputFileException));

  @override
  _$CryptoInvalidInputFileException get _value =>
      super._value as _$CryptoInvalidInputFileException;
}

/// @nodoc

class _$CryptoInvalidInputFileException
    implements CryptoInvalidInputFileException {
  const _$CryptoInvalidInputFileException();

  @override
  String toString() {
    return 'CryptoException.invalidInputFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoInvalidInputFileException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidInputFile,
    required TResult Function() invalidKey,
  }) {
    return invalidInputFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidInputFile,
    TResult Function()? invalidKey,
  }) {
    return invalidInputFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidInputFile,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidInputFile != null) {
      return invalidInputFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoInvalidInputFileException value)
        invalidInputFile,
    required TResult Function(CryptoInvalidKeyException value) invalidKey,
  }) {
    return invalidInputFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CryptoInvalidInputFileException value)? invalidInputFile,
    TResult Function(CryptoInvalidKeyException value)? invalidKey,
  }) {
    return invalidInputFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoInvalidInputFileException value)? invalidInputFile,
    TResult Function(CryptoInvalidKeyException value)? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidInputFile != null) {
      return invalidInputFile(this);
    }
    return orElse();
  }
}

abstract class CryptoInvalidInputFileException implements CryptoException {
  const factory CryptoInvalidInputFileException() =
      _$CryptoInvalidInputFileException;
}

/// @nodoc
abstract class _$$CryptoInvalidKeyExceptionCopyWith<$Res> {
  factory _$$CryptoInvalidKeyExceptionCopyWith(
          _$CryptoInvalidKeyException value,
          $Res Function(_$CryptoInvalidKeyException) then) =
      __$$CryptoInvalidKeyExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CryptoInvalidKeyExceptionCopyWithImpl<$Res>
    extends _$CryptoExceptionCopyWithImpl<$Res>
    implements _$$CryptoInvalidKeyExceptionCopyWith<$Res> {
  __$$CryptoInvalidKeyExceptionCopyWithImpl(_$CryptoInvalidKeyException _value,
      $Res Function(_$CryptoInvalidKeyException) _then)
      : super(_value, (v) => _then(v as _$CryptoInvalidKeyException));

  @override
  _$CryptoInvalidKeyException get _value =>
      super._value as _$CryptoInvalidKeyException;
}

/// @nodoc

class _$CryptoInvalidKeyException implements CryptoInvalidKeyException {
  const _$CryptoInvalidKeyException();

  @override
  String toString() {
    return 'CryptoException.invalidKey()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoInvalidKeyException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidInputFile,
    required TResult Function() invalidKey,
  }) {
    return invalidKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidInputFile,
    TResult Function()? invalidKey,
  }) {
    return invalidKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidInputFile,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoInvalidInputFileException value)
        invalidInputFile,
    required TResult Function(CryptoInvalidKeyException value) invalidKey,
  }) {
    return invalidKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CryptoInvalidInputFileException value)? invalidInputFile,
    TResult Function(CryptoInvalidKeyException value)? invalidKey,
  }) {
    return invalidKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoInvalidInputFileException value)? invalidInputFile,
    TResult Function(CryptoInvalidKeyException value)? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey(this);
    }
    return orElse();
  }
}

abstract class CryptoInvalidKeyException implements CryptoException {
  const factory CryptoInvalidKeyException() = _$CryptoInvalidKeyException;
}
