import 'package:freezed_annotation/freezed_annotation.dart';
part 'crypto_exception.freezed.dart';

@freezed
class CryptoException with _$CryptoException {
  /// When the user is trying to decrypt an already encrypted file
  const factory CryptoException.invalidInputFile() =
      CryptoInvalidInputFileException;

  /// When the user types in wrong key
  const factory CryptoException.invalidKey() = CryptoInvalidKeyException;
}
