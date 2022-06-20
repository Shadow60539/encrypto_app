// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName) save,
    required TResult Function() share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName)? save,
    TResult Function()? share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName)? save,
    TResult Function()? share,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Save value) save,
    required TResult Function(_Share value) share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Save value)? save,
    TResult Function(_Share value)? share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Save value)? save,
    TResult Function(_Share value)? share,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveEventCopyWith<$Res> {
  factory $SaveEventCopyWith(SaveEvent value, $Res Function(SaveEvent) then) =
      _$SaveEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveEventCopyWithImpl<$Res> implements $SaveEventCopyWith<$Res> {
  _$SaveEventCopyWithImpl(this._value, this._then);

  final SaveEvent _value;
  // ignore: unused_field
  final $Res Function(SaveEvent) _then;
}

/// @nodoc
abstract class _$$_SaveCopyWith<$Res> {
  factory _$$_SaveCopyWith(_$_Save value, $Res Function(_$_Save) then) =
      __$$_SaveCopyWithImpl<$Res>;
  $Res call({String fileName});
}

/// @nodoc
class __$$_SaveCopyWithImpl<$Res> extends _$SaveEventCopyWithImpl<$Res>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, (v) => _then(v as _$_Save));

  @override
  _$_Save get _value => super._value as _$_Save;

  @override
  $Res call({
    Object? fileName = freezed,
  }) {
    return _then(_$_Save(
      fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save(this.fileName);

  @override
  final String fileName;

  @override
  String toString() {
    return 'SaveEvent.save(fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Save &&
            const DeepCollectionEquality().equals(other.fileName, fileName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fileName));

  @JsonKey(ignore: true)
  @override
  _$$_SaveCopyWith<_$_Save> get copyWith =>
      __$$_SaveCopyWithImpl<_$_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName) save,
    required TResult Function() share,
  }) {
    return save(fileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName)? save,
    TResult Function()? share,
  }) {
    return save?.call(fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName)? save,
    TResult Function()? share,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(fileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Save value) save,
    required TResult Function(_Share value) share,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Save value)? save,
    TResult Function(_Share value)? share,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Save value)? save,
    TResult Function(_Share value)? share,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements SaveEvent {
  const factory _Save(final String fileName) = _$_Save;

  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SaveCopyWith<_$_Save> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShareCopyWith<$Res> {
  factory _$$_ShareCopyWith(_$_Share value, $Res Function(_$_Share) then) =
      __$$_ShareCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShareCopyWithImpl<$Res> extends _$SaveEventCopyWithImpl<$Res>
    implements _$$_ShareCopyWith<$Res> {
  __$$_ShareCopyWithImpl(_$_Share _value, $Res Function(_$_Share) _then)
      : super(_value, (v) => _then(v as _$_Share));

  @override
  _$_Share get _value => super._value as _$_Share;
}

/// @nodoc

class _$_Share implements _Share {
  const _$_Share();

  @override
  String toString() {
    return 'SaveEvent.share()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Share);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName) save,
    required TResult Function() share,
  }) {
    return share();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName)? save,
    TResult Function()? share,
  }) {
    return share?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName)? save,
    TResult Function()? share,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Save value) save,
    required TResult Function(_Share value) share,
  }) {
    return share(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Save value)? save,
    TResult Function(_Share value)? share,
  }) {
    return share?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Save value)? save,
    TResult Function(_Share value)? share,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(this);
    }
    return orElse();
  }
}

abstract class _Share implements SaveEvent {
  const factory _Share() = _$_Share;
}

/// @nodoc
mixin _$SaveState {
  String? get fileName => throw _privateConstructorUsedError;
  Option<Either<SaveFailure, Unit>> get sharefailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<SaveFailure, String>> get savefailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveStateCopyWith<SaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveStateCopyWith<$Res> {
  factory $SaveStateCopyWith(SaveState value, $Res Function(SaveState) then) =
      _$SaveStateCopyWithImpl<$Res>;
  $Res call(
      {String? fileName,
      Option<Either<SaveFailure, Unit>> sharefailureOrSuccessOption,
      Option<Either<SaveFailure, String>> savefailureOrSuccessOption});
}

/// @nodoc
class _$SaveStateCopyWithImpl<$Res> implements $SaveStateCopyWith<$Res> {
  _$SaveStateCopyWithImpl(this._value, this._then);

  final SaveState _value;
  // ignore: unused_field
  final $Res Function(SaveState) _then;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? sharefailureOrSuccessOption = freezed,
    Object? savefailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      sharefailureOrSuccessOption: sharefailureOrSuccessOption == freezed
          ? _value.sharefailureOrSuccessOption
          : sharefailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SaveFailure, Unit>>,
      savefailureOrSuccessOption: savefailureOrSuccessOption == freezed
          ? _value.savefailureOrSuccessOption
          : savefailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SaveFailure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$$_SaveStateCopyWith<$Res> implements $SaveStateCopyWith<$Res> {
  factory _$$_SaveStateCopyWith(
          _$_SaveState value, $Res Function(_$_SaveState) then) =
      __$$_SaveStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? fileName,
      Option<Either<SaveFailure, Unit>> sharefailureOrSuccessOption,
      Option<Either<SaveFailure, String>> savefailureOrSuccessOption});
}

/// @nodoc
class __$$_SaveStateCopyWithImpl<$Res> extends _$SaveStateCopyWithImpl<$Res>
    implements _$$_SaveStateCopyWith<$Res> {
  __$$_SaveStateCopyWithImpl(
      _$_SaveState _value, $Res Function(_$_SaveState) _then)
      : super(_value, (v) => _then(v as _$_SaveState));

  @override
  _$_SaveState get _value => super._value as _$_SaveState;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? sharefailureOrSuccessOption = freezed,
    Object? savefailureOrSuccessOption = freezed,
  }) {
    return _then(_$_SaveState(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      sharefailureOrSuccessOption: sharefailureOrSuccessOption == freezed
          ? _value.sharefailureOrSuccessOption
          : sharefailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SaveFailure, Unit>>,
      savefailureOrSuccessOption: savefailureOrSuccessOption == freezed
          ? _value.savefailureOrSuccessOption
          : savefailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SaveFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_SaveState implements _SaveState {
  const _$_SaveState(
      {this.fileName,
      required this.sharefailureOrSuccessOption,
      required this.savefailureOrSuccessOption});

  @override
  final String? fileName;
  @override
  final Option<Either<SaveFailure, Unit>> sharefailureOrSuccessOption;
  @override
  final Option<Either<SaveFailure, String>> savefailureOrSuccessOption;

  @override
  String toString() {
    return 'SaveState(fileName: $fileName, sharefailureOrSuccessOption: $sharefailureOrSuccessOption, savefailureOrSuccessOption: $savefailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveState &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(
                other.sharefailureOrSuccessOption,
                sharefailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.savefailureOrSuccessOption, savefailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(sharefailureOrSuccessOption),
      const DeepCollectionEquality().hash(savefailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_SaveStateCopyWith<_$_SaveState> get copyWith =>
      __$$_SaveStateCopyWithImpl<_$_SaveState>(this, _$identity);
}

abstract class _SaveState implements SaveState {
  const factory _SaveState(
      {final String? fileName,
      required final Option<Either<SaveFailure, Unit>>
          sharefailureOrSuccessOption,
      required final Option<Either<SaveFailure, String>>
          savefailureOrSuccessOption}) = _$_SaveState;

  @override
  String? get fileName => throw _privateConstructorUsedError;
  @override
  Option<Either<SaveFailure, Unit>> get sharefailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<SaveFailure, String>> get savefailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SaveStateCopyWith<_$_SaveState> get copyWith =>
      throw _privateConstructorUsedError;
}
