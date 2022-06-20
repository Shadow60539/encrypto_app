// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CryptoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFileCount,
    required TResult Function(FileCount fileCount) updateFileCount,
    required TResult Function() pickFile,
    required TResult Function(String path) updateSelectedFile,
    required TResult Function(String key) encrypt,
    required TResult Function(String key) decrypty,
    required TResult Function() reset,
    required TResult Function(Either<CryptoFailure, File> either)
        updateFailurOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFileCount value) watchFileCount,
    required TResult Function(_UpdateFileCount value) updateFileCount,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_UpdateSelectedFile value) updateSelectedFile,
    required TResult Function(_Encrypt value) encrypt,
    required TResult Function(_Decrypt value) decrypty,
    required TResult Function(_Reset value) reset,
    required TResult Function(_UpdateFailurOrSuccess value)
        updateFailurOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoEventCopyWith<$Res> {
  factory $CryptoEventCopyWith(
          CryptoEvent value, $Res Function(CryptoEvent) then) =
      _$CryptoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoEventCopyWithImpl<$Res> implements $CryptoEventCopyWith<$Res> {
  _$CryptoEventCopyWithImpl(this._value, this._then);

  final CryptoEvent _value;
  // ignore: unused_field
  final $Res Function(CryptoEvent) _then;
}

/// @nodoc
abstract class _$$_WatchFileCountCopyWith<$Res> {
  factory _$$_WatchFileCountCopyWith(
          _$_WatchFileCount value, $Res Function(_$_WatchFileCount) then) =
      __$$_WatchFileCountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchFileCountCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res>
    implements _$$_WatchFileCountCopyWith<$Res> {
  __$$_WatchFileCountCopyWithImpl(
      _$_WatchFileCount _value, $Res Function(_$_WatchFileCount) _then)
      : super(_value, (v) => _then(v as _$_WatchFileCount));

  @override
  _$_WatchFileCount get _value => super._value as _$_WatchFileCount;
}

/// @nodoc

class _$_WatchFileCount implements _WatchFileCount {
  const _$_WatchFileCount();

  @override
  String toString() {
    return 'CryptoEvent.watchFileCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchFileCount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFileCount,
    required TResult Function(FileCount fileCount) updateFileCount,
    required TResult Function() pickFile,
    required TResult Function(String path) updateSelectedFile,
    required TResult Function(String key) encrypt,
    required TResult Function(String key) decrypty,
    required TResult Function() reset,
    required TResult Function(Either<CryptoFailure, File> either)
        updateFailurOrSuccess,
  }) {
    return watchFileCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
  }) {
    return watchFileCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (watchFileCount != null) {
      return watchFileCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFileCount value) watchFileCount,
    required TResult Function(_UpdateFileCount value) updateFileCount,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_UpdateSelectedFile value) updateSelectedFile,
    required TResult Function(_Encrypt value) encrypt,
    required TResult Function(_Decrypt value) decrypty,
    required TResult Function(_Reset value) reset,
    required TResult Function(_UpdateFailurOrSuccess value)
        updateFailurOrSuccess,
  }) {
    return watchFileCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
  }) {
    return watchFileCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (watchFileCount != null) {
      return watchFileCount(this);
    }
    return orElse();
  }
}

abstract class _WatchFileCount implements CryptoEvent {
  const factory _WatchFileCount() = _$_WatchFileCount;
}

/// @nodoc
abstract class _$$_UpdateFileCountCopyWith<$Res> {
  factory _$$_UpdateFileCountCopyWith(
          _$_UpdateFileCount value, $Res Function(_$_UpdateFileCount) then) =
      __$$_UpdateFileCountCopyWithImpl<$Res>;
  $Res call({FileCount fileCount});
}

/// @nodoc
class __$$_UpdateFileCountCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res>
    implements _$$_UpdateFileCountCopyWith<$Res> {
  __$$_UpdateFileCountCopyWithImpl(
      _$_UpdateFileCount _value, $Res Function(_$_UpdateFileCount) _then)
      : super(_value, (v) => _then(v as _$_UpdateFileCount));

  @override
  _$_UpdateFileCount get _value => super._value as _$_UpdateFileCount;

  @override
  $Res call({
    Object? fileCount = freezed,
  }) {
    return _then(_$_UpdateFileCount(
      fileCount == freezed
          ? _value.fileCount
          : fileCount // ignore: cast_nullable_to_non_nullable
              as FileCount,
    ));
  }
}

/// @nodoc

class _$_UpdateFileCount implements _UpdateFileCount {
  const _$_UpdateFileCount(this.fileCount);

  @override
  final FileCount fileCount;

  @override
  String toString() {
    return 'CryptoEvent.updateFileCount(fileCount: $fileCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFileCount &&
            const DeepCollectionEquality().equals(other.fileCount, fileCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fileCount));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateFileCountCopyWith<_$_UpdateFileCount> get copyWith =>
      __$$_UpdateFileCountCopyWithImpl<_$_UpdateFileCount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFileCount,
    required TResult Function(FileCount fileCount) updateFileCount,
    required TResult Function() pickFile,
    required TResult Function(String path) updateSelectedFile,
    required TResult Function(String key) encrypt,
    required TResult Function(String key) decrypty,
    required TResult Function() reset,
    required TResult Function(Either<CryptoFailure, File> either)
        updateFailurOrSuccess,
  }) {
    return updateFileCount(fileCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
  }) {
    return updateFileCount?.call(fileCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (updateFileCount != null) {
      return updateFileCount(fileCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFileCount value) watchFileCount,
    required TResult Function(_UpdateFileCount value) updateFileCount,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_UpdateSelectedFile value) updateSelectedFile,
    required TResult Function(_Encrypt value) encrypt,
    required TResult Function(_Decrypt value) decrypty,
    required TResult Function(_Reset value) reset,
    required TResult Function(_UpdateFailurOrSuccess value)
        updateFailurOrSuccess,
  }) {
    return updateFileCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
  }) {
    return updateFileCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (updateFileCount != null) {
      return updateFileCount(this);
    }
    return orElse();
  }
}

abstract class _UpdateFileCount implements CryptoEvent {
  const factory _UpdateFileCount(final FileCount fileCount) =
      _$_UpdateFileCount;

  FileCount get fileCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateFileCountCopyWith<_$_UpdateFileCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickFileCopyWith<$Res> {
  factory _$$_PickFileCopyWith(
          _$_PickFile value, $Res Function(_$_PickFile) then) =
      __$$_PickFileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PickFileCopyWithImpl<$Res> extends _$CryptoEventCopyWithImpl<$Res>
    implements _$$_PickFileCopyWith<$Res> {
  __$$_PickFileCopyWithImpl(
      _$_PickFile _value, $Res Function(_$_PickFile) _then)
      : super(_value, (v) => _then(v as _$_PickFile));

  @override
  _$_PickFile get _value => super._value as _$_PickFile;
}

/// @nodoc

class _$_PickFile implements _PickFile {
  const _$_PickFile();

  @override
  String toString() {
    return 'CryptoEvent.pickFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PickFile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFileCount,
    required TResult Function(FileCount fileCount) updateFileCount,
    required TResult Function() pickFile,
    required TResult Function(String path) updateSelectedFile,
    required TResult Function(String key) encrypt,
    required TResult Function(String key) decrypty,
    required TResult Function() reset,
    required TResult Function(Either<CryptoFailure, File> either)
        updateFailurOrSuccess,
  }) {
    return pickFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
  }) {
    return pickFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFileCount value) watchFileCount,
    required TResult Function(_UpdateFileCount value) updateFileCount,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_UpdateSelectedFile value) updateSelectedFile,
    required TResult Function(_Encrypt value) encrypt,
    required TResult Function(_Decrypt value) decrypty,
    required TResult Function(_Reset value) reset,
    required TResult Function(_UpdateFailurOrSuccess value)
        updateFailurOrSuccess,
  }) {
    return pickFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
  }) {
    return pickFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile(this);
    }
    return orElse();
  }
}

abstract class _PickFile implements CryptoEvent {
  const factory _PickFile() = _$_PickFile;
}

/// @nodoc
abstract class _$$_UpdateSelectedFileCopyWith<$Res> {
  factory _$$_UpdateSelectedFileCopyWith(_$_UpdateSelectedFile value,
          $Res Function(_$_UpdateSelectedFile) then) =
      __$$_UpdateSelectedFileCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class __$$_UpdateSelectedFileCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res>
    implements _$$_UpdateSelectedFileCopyWith<$Res> {
  __$$_UpdateSelectedFileCopyWithImpl(
      _$_UpdateSelectedFile _value, $Res Function(_$_UpdateSelectedFile) _then)
      : super(_value, (v) => _then(v as _$_UpdateSelectedFile));

  @override
  _$_UpdateSelectedFile get _value => super._value as _$_UpdateSelectedFile;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_$_UpdateSelectedFile(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateSelectedFile implements _UpdateSelectedFile {
  const _$_UpdateSelectedFile(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'CryptoEvent.updateSelectedFile(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSelectedFile &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateSelectedFileCopyWith<_$_UpdateSelectedFile> get copyWith =>
      __$$_UpdateSelectedFileCopyWithImpl<_$_UpdateSelectedFile>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFileCount,
    required TResult Function(FileCount fileCount) updateFileCount,
    required TResult Function() pickFile,
    required TResult Function(String path) updateSelectedFile,
    required TResult Function(String key) encrypt,
    required TResult Function(String key) decrypty,
    required TResult Function() reset,
    required TResult Function(Either<CryptoFailure, File> either)
        updateFailurOrSuccess,
  }) {
    return updateSelectedFile(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
  }) {
    return updateSelectedFile?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (updateSelectedFile != null) {
      return updateSelectedFile(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFileCount value) watchFileCount,
    required TResult Function(_UpdateFileCount value) updateFileCount,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_UpdateSelectedFile value) updateSelectedFile,
    required TResult Function(_Encrypt value) encrypt,
    required TResult Function(_Decrypt value) decrypty,
    required TResult Function(_Reset value) reset,
    required TResult Function(_UpdateFailurOrSuccess value)
        updateFailurOrSuccess,
  }) {
    return updateSelectedFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
  }) {
    return updateSelectedFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (updateSelectedFile != null) {
      return updateSelectedFile(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedFile implements CryptoEvent {
  const factory _UpdateSelectedFile(final String path) = _$_UpdateSelectedFile;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateSelectedFileCopyWith<_$_UpdateSelectedFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EncryptCopyWith<$Res> {
  factory _$$_EncryptCopyWith(
          _$_Encrypt value, $Res Function(_$_Encrypt) then) =
      __$$_EncryptCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class __$$_EncryptCopyWithImpl<$Res> extends _$CryptoEventCopyWithImpl<$Res>
    implements _$$_EncryptCopyWith<$Res> {
  __$$_EncryptCopyWithImpl(_$_Encrypt _value, $Res Function(_$_Encrypt) _then)
      : super(_value, (v) => _then(v as _$_Encrypt));

  @override
  _$_Encrypt get _value => super._value as _$_Encrypt;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_$_Encrypt(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Encrypt implements _Encrypt {
  const _$_Encrypt(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'CryptoEvent.encrypt(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Encrypt &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$$_EncryptCopyWith<_$_Encrypt> get copyWith =>
      __$$_EncryptCopyWithImpl<_$_Encrypt>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFileCount,
    required TResult Function(FileCount fileCount) updateFileCount,
    required TResult Function() pickFile,
    required TResult Function(String path) updateSelectedFile,
    required TResult Function(String key) encrypt,
    required TResult Function(String key) decrypty,
    required TResult Function() reset,
    required TResult Function(Either<CryptoFailure, File> either)
        updateFailurOrSuccess,
  }) {
    return encrypt(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
  }) {
    return encrypt?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (encrypt != null) {
      return encrypt(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFileCount value) watchFileCount,
    required TResult Function(_UpdateFileCount value) updateFileCount,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_UpdateSelectedFile value) updateSelectedFile,
    required TResult Function(_Encrypt value) encrypt,
    required TResult Function(_Decrypt value) decrypty,
    required TResult Function(_Reset value) reset,
    required TResult Function(_UpdateFailurOrSuccess value)
        updateFailurOrSuccess,
  }) {
    return encrypt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
  }) {
    return encrypt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (encrypt != null) {
      return encrypt(this);
    }
    return orElse();
  }
}

abstract class _Encrypt implements CryptoEvent {
  const factory _Encrypt(final String key) = _$_Encrypt;

  String get key => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EncryptCopyWith<_$_Encrypt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecryptCopyWith<$Res> {
  factory _$$_DecryptCopyWith(
          _$_Decrypt value, $Res Function(_$_Decrypt) then) =
      __$$_DecryptCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class __$$_DecryptCopyWithImpl<$Res> extends _$CryptoEventCopyWithImpl<$Res>
    implements _$$_DecryptCopyWith<$Res> {
  __$$_DecryptCopyWithImpl(_$_Decrypt _value, $Res Function(_$_Decrypt) _then)
      : super(_value, (v) => _then(v as _$_Decrypt));

  @override
  _$_Decrypt get _value => super._value as _$_Decrypt;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_$_Decrypt(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Decrypt implements _Decrypt {
  const _$_Decrypt(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'CryptoEvent.decrypty(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Decrypt &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$$_DecryptCopyWith<_$_Decrypt> get copyWith =>
      __$$_DecryptCopyWithImpl<_$_Decrypt>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFileCount,
    required TResult Function(FileCount fileCount) updateFileCount,
    required TResult Function() pickFile,
    required TResult Function(String path) updateSelectedFile,
    required TResult Function(String key) encrypt,
    required TResult Function(String key) decrypty,
    required TResult Function() reset,
    required TResult Function(Either<CryptoFailure, File> either)
        updateFailurOrSuccess,
  }) {
    return decrypty(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
  }) {
    return decrypty?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (decrypty != null) {
      return decrypty(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFileCount value) watchFileCount,
    required TResult Function(_UpdateFileCount value) updateFileCount,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_UpdateSelectedFile value) updateSelectedFile,
    required TResult Function(_Encrypt value) encrypt,
    required TResult Function(_Decrypt value) decrypty,
    required TResult Function(_Reset value) reset,
    required TResult Function(_UpdateFailurOrSuccess value)
        updateFailurOrSuccess,
  }) {
    return decrypty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
  }) {
    return decrypty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (decrypty != null) {
      return decrypty(this);
    }
    return orElse();
  }
}

abstract class _Decrypt implements CryptoEvent {
  const factory _Decrypt(final String key) = _$_Decrypt;

  String get key => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DecryptCopyWith<_$_Decrypt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res> extends _$CryptoEventCopyWithImpl<$Res>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, (v) => _then(v as _$_Reset));

  @override
  _$_Reset get _value => super._value as _$_Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'CryptoEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFileCount,
    required TResult Function(FileCount fileCount) updateFileCount,
    required TResult Function() pickFile,
    required TResult Function(String path) updateSelectedFile,
    required TResult Function(String key) encrypt,
    required TResult Function(String key) decrypty,
    required TResult Function() reset,
    required TResult Function(Either<CryptoFailure, File> either)
        updateFailurOrSuccess,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFileCount value) watchFileCount,
    required TResult Function(_UpdateFileCount value) updateFileCount,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_UpdateSelectedFile value) updateSelectedFile,
    required TResult Function(_Encrypt value) encrypt,
    required TResult Function(_Decrypt value) decrypty,
    required TResult Function(_Reset value) reset,
    required TResult Function(_UpdateFailurOrSuccess value)
        updateFailurOrSuccess,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements CryptoEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_UpdateFailurOrSuccessCopyWith<$Res> {
  factory _$$_UpdateFailurOrSuccessCopyWith(_$_UpdateFailurOrSuccess value,
          $Res Function(_$_UpdateFailurOrSuccess) then) =
      __$$_UpdateFailurOrSuccessCopyWithImpl<$Res>;
  $Res call({Either<CryptoFailure, File> either});
}

/// @nodoc
class __$$_UpdateFailurOrSuccessCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res>
    implements _$$_UpdateFailurOrSuccessCopyWith<$Res> {
  __$$_UpdateFailurOrSuccessCopyWithImpl(_$_UpdateFailurOrSuccess _value,
      $Res Function(_$_UpdateFailurOrSuccess) _then)
      : super(_value, (v) => _then(v as _$_UpdateFailurOrSuccess));

  @override
  _$_UpdateFailurOrSuccess get _value =>
      super._value as _$_UpdateFailurOrSuccess;

  @override
  $Res call({
    Object? either = freezed,
  }) {
    return _then(_$_UpdateFailurOrSuccess(
      either == freezed
          ? _value.either
          : either // ignore: cast_nullable_to_non_nullable
              as Either<CryptoFailure, File>,
    ));
  }
}

/// @nodoc

class _$_UpdateFailurOrSuccess implements _UpdateFailurOrSuccess {
  const _$_UpdateFailurOrSuccess(this.either);

  @override
  final Either<CryptoFailure, File> either;

  @override
  String toString() {
    return 'CryptoEvent.updateFailurOrSuccess(either: $either)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFailurOrSuccess &&
            const DeepCollectionEquality().equals(other.either, either));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(either));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateFailurOrSuccessCopyWith<_$_UpdateFailurOrSuccess> get copyWith =>
      __$$_UpdateFailurOrSuccessCopyWithImpl<_$_UpdateFailurOrSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFileCount,
    required TResult Function(FileCount fileCount) updateFileCount,
    required TResult Function() pickFile,
    required TResult Function(String path) updateSelectedFile,
    required TResult Function(String key) encrypt,
    required TResult Function(String key) decrypty,
    required TResult Function() reset,
    required TResult Function(Either<CryptoFailure, File> either)
        updateFailurOrSuccess,
  }) {
    return updateFailurOrSuccess(either);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
  }) {
    return updateFailurOrSuccess?.call(either);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFileCount,
    TResult Function(FileCount fileCount)? updateFileCount,
    TResult Function()? pickFile,
    TResult Function(String path)? updateSelectedFile,
    TResult Function(String key)? encrypt,
    TResult Function(String key)? decrypty,
    TResult Function()? reset,
    TResult Function(Either<CryptoFailure, File> either)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (updateFailurOrSuccess != null) {
      return updateFailurOrSuccess(either);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFileCount value) watchFileCount,
    required TResult Function(_UpdateFileCount value) updateFileCount,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_UpdateSelectedFile value) updateSelectedFile,
    required TResult Function(_Encrypt value) encrypt,
    required TResult Function(_Decrypt value) decrypty,
    required TResult Function(_Reset value) reset,
    required TResult Function(_UpdateFailurOrSuccess value)
        updateFailurOrSuccess,
  }) {
    return updateFailurOrSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
  }) {
    return updateFailurOrSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFileCount value)? watchFileCount,
    TResult Function(_UpdateFileCount value)? updateFileCount,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_UpdateSelectedFile value)? updateSelectedFile,
    TResult Function(_Encrypt value)? encrypt,
    TResult Function(_Decrypt value)? decrypty,
    TResult Function(_Reset value)? reset,
    TResult Function(_UpdateFailurOrSuccess value)? updateFailurOrSuccess,
    required TResult orElse(),
  }) {
    if (updateFailurOrSuccess != null) {
      return updateFailurOrSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailurOrSuccess implements CryptoEvent {
  const factory _UpdateFailurOrSuccess(
      final Either<CryptoFailure, File> either) = _$_UpdateFailurOrSuccess;

  Either<CryptoFailure, File> get either => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateFailurOrSuccessCopyWith<_$_UpdateFailurOrSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CryptoState {
  File? get convertedFile => throw _privateConstructorUsedError;
  FileCount? get fileCount => throw _privateConstructorUsedError;
  PlatformFile? get selectedFile => throw _privateConstructorUsedError;
  PermissionStatus? get storagePermissionStatus =>
      throw _privateConstructorUsedError;
  CryptionMethod get cryptionMethod => throw _privateConstructorUsedError;
  Option<Either<CryptoFailure, File>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<PlatformFile> get pickFileOption => throw _privateConstructorUsedError;
  bool get isFromShare => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoStateCopyWith<CryptoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoStateCopyWith<$Res> {
  factory $CryptoStateCopyWith(
          CryptoState value, $Res Function(CryptoState) then) =
      _$CryptoStateCopyWithImpl<$Res>;
  $Res call(
      {File? convertedFile,
      FileCount? fileCount,
      PlatformFile? selectedFile,
      PermissionStatus? storagePermissionStatus,
      CryptionMethod cryptionMethod,
      Option<Either<CryptoFailure, File>> failureOrSuccessOption,
      Option<PlatformFile> pickFileOption,
      bool isFromShare});
}

/// @nodoc
class _$CryptoStateCopyWithImpl<$Res> implements $CryptoStateCopyWith<$Res> {
  _$CryptoStateCopyWithImpl(this._value, this._then);

  final CryptoState _value;
  // ignore: unused_field
  final $Res Function(CryptoState) _then;

  @override
  $Res call({
    Object? convertedFile = freezed,
    Object? fileCount = freezed,
    Object? selectedFile = freezed,
    Object? storagePermissionStatus = freezed,
    Object? cryptionMethod = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? pickFileOption = freezed,
    Object? isFromShare = freezed,
  }) {
    return _then(_value.copyWith(
      convertedFile: convertedFile == freezed
          ? _value.convertedFile
          : convertedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      fileCount: fileCount == freezed
          ? _value.fileCount
          : fileCount // ignore: cast_nullable_to_non_nullable
              as FileCount?,
      selectedFile: selectedFile == freezed
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      storagePermissionStatus: storagePermissionStatus == freezed
          ? _value.storagePermissionStatus
          : storagePermissionStatus // ignore: cast_nullable_to_non_nullable
              as PermissionStatus?,
      cryptionMethod: cryptionMethod == freezed
          ? _value.cryptionMethod
          : cryptionMethod // ignore: cast_nullable_to_non_nullable
              as CryptionMethod,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CryptoFailure, File>>,
      pickFileOption: pickFileOption == freezed
          ? _value.pickFileOption
          : pickFileOption // ignore: cast_nullable_to_non_nullable
              as Option<PlatformFile>,
      isFromShare: isFromShare == freezed
          ? _value.isFromShare
          : isFromShare // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CryptoStateCopyWith<$Res>
    implements $CryptoStateCopyWith<$Res> {
  factory _$$_CryptoStateCopyWith(
          _$_CryptoState value, $Res Function(_$_CryptoState) then) =
      __$$_CryptoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {File? convertedFile,
      FileCount? fileCount,
      PlatformFile? selectedFile,
      PermissionStatus? storagePermissionStatus,
      CryptionMethod cryptionMethod,
      Option<Either<CryptoFailure, File>> failureOrSuccessOption,
      Option<PlatformFile> pickFileOption,
      bool isFromShare});
}

/// @nodoc
class __$$_CryptoStateCopyWithImpl<$Res> extends _$CryptoStateCopyWithImpl<$Res>
    implements _$$_CryptoStateCopyWith<$Res> {
  __$$_CryptoStateCopyWithImpl(
      _$_CryptoState _value, $Res Function(_$_CryptoState) _then)
      : super(_value, (v) => _then(v as _$_CryptoState));

  @override
  _$_CryptoState get _value => super._value as _$_CryptoState;

  @override
  $Res call({
    Object? convertedFile = freezed,
    Object? fileCount = freezed,
    Object? selectedFile = freezed,
    Object? storagePermissionStatus = freezed,
    Object? cryptionMethod = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? pickFileOption = freezed,
    Object? isFromShare = freezed,
  }) {
    return _then(_$_CryptoState(
      convertedFile: convertedFile == freezed
          ? _value.convertedFile
          : convertedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      fileCount: fileCount == freezed
          ? _value.fileCount
          : fileCount // ignore: cast_nullable_to_non_nullable
              as FileCount?,
      selectedFile: selectedFile == freezed
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      storagePermissionStatus: storagePermissionStatus == freezed
          ? _value.storagePermissionStatus
          : storagePermissionStatus // ignore: cast_nullable_to_non_nullable
              as PermissionStatus?,
      cryptionMethod: cryptionMethod == freezed
          ? _value.cryptionMethod
          : cryptionMethod // ignore: cast_nullable_to_non_nullable
              as CryptionMethod,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CryptoFailure, File>>,
      pickFileOption: pickFileOption == freezed
          ? _value.pickFileOption
          : pickFileOption // ignore: cast_nullable_to_non_nullable
              as Option<PlatformFile>,
      isFromShare: isFromShare == freezed
          ? _value.isFromShare
          : isFromShare // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CryptoState implements _CryptoState {
  const _$_CryptoState(
      {this.convertedFile,
      this.fileCount,
      this.selectedFile,
      this.storagePermissionStatus,
      required this.cryptionMethod,
      required this.failureOrSuccessOption,
      required this.pickFileOption,
      required this.isFromShare});

  @override
  final File? convertedFile;
  @override
  final FileCount? fileCount;
  @override
  final PlatformFile? selectedFile;
  @override
  final PermissionStatus? storagePermissionStatus;
  @override
  final CryptionMethod cryptionMethod;
  @override
  final Option<Either<CryptoFailure, File>> failureOrSuccessOption;
  @override
  final Option<PlatformFile> pickFileOption;
  @override
  final bool isFromShare;

  @override
  String toString() {
    return 'CryptoState(convertedFile: $convertedFile, fileCount: $fileCount, selectedFile: $selectedFile, storagePermissionStatus: $storagePermissionStatus, cryptionMethod: $cryptionMethod, failureOrSuccessOption: $failureOrSuccessOption, pickFileOption: $pickFileOption, isFromShare: $isFromShare)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoState &&
            const DeepCollectionEquality()
                .equals(other.convertedFile, convertedFile) &&
            const DeepCollectionEquality().equals(other.fileCount, fileCount) &&
            const DeepCollectionEquality()
                .equals(other.selectedFile, selectedFile) &&
            const DeepCollectionEquality().equals(
                other.storagePermissionStatus, storagePermissionStatus) &&
            const DeepCollectionEquality()
                .equals(other.cryptionMethod, cryptionMethod) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccessOption, failureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other.pickFileOption, pickFileOption) &&
            const DeepCollectionEquality()
                .equals(other.isFromShare, isFromShare));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(convertedFile),
      const DeepCollectionEquality().hash(fileCount),
      const DeepCollectionEquality().hash(selectedFile),
      const DeepCollectionEquality().hash(storagePermissionStatus),
      const DeepCollectionEquality().hash(cryptionMethod),
      const DeepCollectionEquality().hash(failureOrSuccessOption),
      const DeepCollectionEquality().hash(pickFileOption),
      const DeepCollectionEquality().hash(isFromShare));

  @JsonKey(ignore: true)
  @override
  _$$_CryptoStateCopyWith<_$_CryptoState> get copyWith =>
      __$$_CryptoStateCopyWithImpl<_$_CryptoState>(this, _$identity);
}

abstract class _CryptoState implements CryptoState {
  const factory _CryptoState(
      {final File? convertedFile,
      final FileCount? fileCount,
      final PlatformFile? selectedFile,
      final PermissionStatus? storagePermissionStatus,
      required final CryptionMethod cryptionMethod,
      required final Option<Either<CryptoFailure, File>> failureOrSuccessOption,
      required final Option<PlatformFile> pickFileOption,
      required final bool isFromShare}) = _$_CryptoState;

  @override
  File? get convertedFile => throw _privateConstructorUsedError;
  @override
  FileCount? get fileCount => throw _privateConstructorUsedError;
  @override
  PlatformFile? get selectedFile => throw _privateConstructorUsedError;
  @override
  PermissionStatus? get storagePermissionStatus =>
      throw _privateConstructorUsedError;
  @override
  CryptionMethod get cryptionMethod => throw _privateConstructorUsedError;
  @override
  Option<Either<CryptoFailure, File>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<PlatformFile> get pickFileOption => throw _privateConstructorUsedError;
  @override
  bool get isFromShare => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoStateCopyWith<_$_CryptoState> get copyWith =>
      throw _privateConstructorUsedError;
}
