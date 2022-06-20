// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userCancelled,
    required TResult Function() permissionDenied,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userCancelled,
    TResult Function()? permissionDenied,
    TResult Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userCancelled,
    TResult Function()? permissionDenied,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveUserCancelledException value) userCancelled,
    required TResult Function(SavePermissionDeniedException value)
        permissionDenied,
    required TResult Function(SaveUnexpectedException value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveUserCancelledException value)? userCancelled,
    TResult Function(SavePermissionDeniedException value)? permissionDenied,
    TResult Function(SaveUnexpectedException value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveUserCancelledException value)? userCancelled,
    TResult Function(SavePermissionDeniedException value)? permissionDenied,
    TResult Function(SaveUnexpectedException value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveExceptionCopyWith<$Res> {
  factory $SaveExceptionCopyWith(
          SaveException value, $Res Function(SaveException) then) =
      _$SaveExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveExceptionCopyWithImpl<$Res>
    implements $SaveExceptionCopyWith<$Res> {
  _$SaveExceptionCopyWithImpl(this._value, this._then);

  final SaveException _value;
  // ignore: unused_field
  final $Res Function(SaveException) _then;
}

/// @nodoc
abstract class _$$SaveUserCancelledExceptionCopyWith<$Res> {
  factory _$$SaveUserCancelledExceptionCopyWith(
          _$SaveUserCancelledException value,
          $Res Function(_$SaveUserCancelledException) then) =
      __$$SaveUserCancelledExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveUserCancelledExceptionCopyWithImpl<$Res>
    extends _$SaveExceptionCopyWithImpl<$Res>
    implements _$$SaveUserCancelledExceptionCopyWith<$Res> {
  __$$SaveUserCancelledExceptionCopyWithImpl(
      _$SaveUserCancelledException _value,
      $Res Function(_$SaveUserCancelledException) _then)
      : super(_value, (v) => _then(v as _$SaveUserCancelledException));

  @override
  _$SaveUserCancelledException get _value =>
      super._value as _$SaveUserCancelledException;
}

/// @nodoc

class _$SaveUserCancelledException implements SaveUserCancelledException {
  const _$SaveUserCancelledException();

  @override
  String toString() {
    return 'SaveException.userCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUserCancelledException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userCancelled,
    required TResult Function() permissionDenied,
    required TResult Function() unexpected,
  }) {
    return userCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userCancelled,
    TResult Function()? permissionDenied,
    TResult Function()? unexpected,
  }) {
    return userCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userCancelled,
    TResult Function()? permissionDenied,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (userCancelled != null) {
      return userCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveUserCancelledException value) userCancelled,
    required TResult Function(SavePermissionDeniedException value)
        permissionDenied,
    required TResult Function(SaveUnexpectedException value) unexpected,
  }) {
    return userCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveUserCancelledException value)? userCancelled,
    TResult Function(SavePermissionDeniedException value)? permissionDenied,
    TResult Function(SaveUnexpectedException value)? unexpected,
  }) {
    return userCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveUserCancelledException value)? userCancelled,
    TResult Function(SavePermissionDeniedException value)? permissionDenied,
    TResult Function(SaveUnexpectedException value)? unexpected,
    required TResult orElse(),
  }) {
    if (userCancelled != null) {
      return userCancelled(this);
    }
    return orElse();
  }
}

abstract class SaveUserCancelledException implements SaveException {
  const factory SaveUserCancelledException() = _$SaveUserCancelledException;
}

/// @nodoc
abstract class _$$SavePermissionDeniedExceptionCopyWith<$Res> {
  factory _$$SavePermissionDeniedExceptionCopyWith(
          _$SavePermissionDeniedException value,
          $Res Function(_$SavePermissionDeniedException) then) =
      __$$SavePermissionDeniedExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavePermissionDeniedExceptionCopyWithImpl<$Res>
    extends _$SaveExceptionCopyWithImpl<$Res>
    implements _$$SavePermissionDeniedExceptionCopyWith<$Res> {
  __$$SavePermissionDeniedExceptionCopyWithImpl(
      _$SavePermissionDeniedException _value,
      $Res Function(_$SavePermissionDeniedException) _then)
      : super(_value, (v) => _then(v as _$SavePermissionDeniedException));

  @override
  _$SavePermissionDeniedException get _value =>
      super._value as _$SavePermissionDeniedException;
}

/// @nodoc

class _$SavePermissionDeniedException implements SavePermissionDeniedException {
  const _$SavePermissionDeniedException();

  @override
  String toString() {
    return 'SaveException.permissionDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePermissionDeniedException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userCancelled,
    required TResult Function() permissionDenied,
    required TResult Function() unexpected,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userCancelled,
    TResult Function()? permissionDenied,
    TResult Function()? unexpected,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userCancelled,
    TResult Function()? permissionDenied,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveUserCancelledException value) userCancelled,
    required TResult Function(SavePermissionDeniedException value)
        permissionDenied,
    required TResult Function(SaveUnexpectedException value) unexpected,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveUserCancelledException value)? userCancelled,
    TResult Function(SavePermissionDeniedException value)? permissionDenied,
    TResult Function(SaveUnexpectedException value)? unexpected,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveUserCancelledException value)? userCancelled,
    TResult Function(SavePermissionDeniedException value)? permissionDenied,
    TResult Function(SaveUnexpectedException value)? unexpected,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class SavePermissionDeniedException implements SaveException {
  const factory SavePermissionDeniedException() =
      _$SavePermissionDeniedException;
}

/// @nodoc
abstract class _$$SaveUnexpectedExceptionCopyWith<$Res> {
  factory _$$SaveUnexpectedExceptionCopyWith(_$SaveUnexpectedException value,
          $Res Function(_$SaveUnexpectedException) then) =
      __$$SaveUnexpectedExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveUnexpectedExceptionCopyWithImpl<$Res>
    extends _$SaveExceptionCopyWithImpl<$Res>
    implements _$$SaveUnexpectedExceptionCopyWith<$Res> {
  __$$SaveUnexpectedExceptionCopyWithImpl(_$SaveUnexpectedException _value,
      $Res Function(_$SaveUnexpectedException) _then)
      : super(_value, (v) => _then(v as _$SaveUnexpectedException));

  @override
  _$SaveUnexpectedException get _value =>
      super._value as _$SaveUnexpectedException;
}

/// @nodoc

class _$SaveUnexpectedException implements SaveUnexpectedException {
  const _$SaveUnexpectedException();

  @override
  String toString() {
    return 'SaveException.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUnexpectedException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userCancelled,
    required TResult Function() permissionDenied,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userCancelled,
    TResult Function()? permissionDenied,
    TResult Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userCancelled,
    TResult Function()? permissionDenied,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveUserCancelledException value) userCancelled,
    required TResult Function(SavePermissionDeniedException value)
        permissionDenied,
    required TResult Function(SaveUnexpectedException value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveUserCancelledException value)? userCancelled,
    TResult Function(SavePermissionDeniedException value)? permissionDenied,
    TResult Function(SaveUnexpectedException value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveUserCancelledException value)? userCancelled,
    TResult Function(SavePermissionDeniedException value)? permissionDenied,
    TResult Function(SaveUnexpectedException value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class SaveUnexpectedException implements SaveException {
  const factory SaveUnexpectedException() = _$SaveUnexpectedException;
}
