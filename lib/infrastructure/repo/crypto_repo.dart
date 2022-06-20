import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/domain/entity/file_count.dart';
import 'package:flutter_encrypto/domain/failure/crypto_failure.dart';
import 'package:flutter_encrypto/domain/repository/i_crypto_repo.dart';
import 'package:flutter_encrypto/infrastructure/data/crypto_data_source.dart';
import 'package:flutter_encrypto/infrastructure/exception/crypto_exception.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICryptoRepo)
class CryptoRepo extends ICryptoRepo {
  final ICryptoDataSource dataSource;

  CryptoRepo({required this.dataSource});

  @override
  Future<Either<CryptoFailure, File>> encrypt({
    required String path,
    required String key,
  }) async {
    try {
      final encryptedFile = await dataSource.encrypt(path: path, key: key);

      return Right(encryptedFile);
    } on CryptoInvalidInputFileException {
      return const Left(CryptoFailure.encryptionFailure());
    }
  }

  @override
  Future<Either<CryptoFailure, File>> decrypt({
    required String path,
    required String key,
  }) async {
    try {
      final decryptedFile = await dataSource.decrypt(path: path, key: key);

      return Right(decryptedFile);
    } on CryptoInvalidKeyException {
      return const Left(CryptoFailure.invalidKeyFailure());
    } on CryptoInvalidInputFileException {
      return const Left(CryptoFailure.decryptionFailure());
    }
  }

  @override
  Stream<FileCount> fileCountStream() async* {
    yield* dataSource.fileCountStream();
  }

  @override
  Future<Unit> incrementFileCount(int fileSize) async {
    return await dataSource.incrementFileCount(fileSize);
  }
}
