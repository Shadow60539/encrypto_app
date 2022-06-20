import 'package:freezed_annotation/freezed_annotation.dart';
part 'crypto_failure.freezed.dart';

@freezed
class CryptoFailure with _$CryptoFailure {
  const factory CryptoFailure.clientFailure() = _ClientFailure;

  /// When the user is trying to encrypt an already decrypted file
  const factory CryptoFailure.encryptionFailure() = _EncryptionFailure;

  /// When the user is trying to decrypt an already encrypted file
  const factory CryptoFailure.decryptionFailure() = _DecryptionFailure;

  /// When the user enters a wrong key for decryption
  const factory CryptoFailure.invalidKeyFailure() = _InvalidKeyFailure;
}
