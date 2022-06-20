import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/domain/entity/file_count.dart';
import 'package:flutter_encrypto/infrastructure/exception/crypto_exception.dart';
import 'package:flutter_encrypto/domain/failure/crypto_failure.dart';

abstract class ICryptoRepo {
  /// Encrypt the file present at the specified [path]
  ///
  /// * Returns a [CryptoFailure] on [CryptoException]
  /// * Returns the encrypted file when success
  Future<Either<CryptoFailure, File>> encrypt({
    required String path,
    required String key,
  });

  /// Decrypt the file present at the specified [path]
  ///
  /// * Returns a [CryptoFailure] on [CryptoException]
  /// * Returns the decrypted file when success
  Future<Either<CryptoFailure, File>> decrypt({
    required String path,
    required String key,
  });

  Stream<FileCount> fileCountStream();

  /// Update the file count
  ///
  /// Increment the count value and add the new [fileSize] of
  /// the converted file
  Future<Unit> incrementFileCount(int fileSize);
}
