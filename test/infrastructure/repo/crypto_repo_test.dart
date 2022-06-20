import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/domain/failure/crypto_failure.dart';
import 'package:flutter_encrypto/infrastructure/data/crypto_data_source.dart';
import 'package:flutter_encrypto/infrastructure/exception/crypto_exception.dart';
import 'package:flutter_encrypto/infrastructure/repo/crypto_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'crypto_repo_test.mocks.dart';

@GenerateMocks([ICryptoDataSource])
void main() {
  late MockICryptoDataSource dataSource;
  late CryptoRepo repo;

  setUp(() {
    dataSource = MockICryptoDataSource();
    repo = CryptoRepo(dataSource: dataSource);
  });

  const String tPath = "test/fixtures/path-to-file";
  const String tKey = "123";
  final File tFile = File("path");

  group("encrypt", () {
    test('should return [Right(tFile)] when call to repo is success', () async {
      // arrange
      when(dataSource.encrypt(path: tPath, key: tKey))
          .thenAnswer((_) async => tFile);
      // act
      final result = await repo.encrypt(path: tPath, key: tKey);
      // assert
      expect(result, Right(tFile));
      verify(dataSource.encrypt(path: tPath, key: tKey));
      verifyNoMoreInteractions(dataSource);
    });
    test(
        'should return [Left(CryptoFailure.encryptionFailure())] when [CryptoInvalidInputFileException] is thrown',
        () async {
      // arrange
      when(dataSource.encrypt(path: tPath, key: tKey))
          .thenThrow(const CryptoInvalidInputFileException());
      // act
      final result = await repo.encrypt(path: tPath, key: tKey);
      // assert
      expect(result, const Left(CryptoFailure.encryptionFailure()));
      verify(dataSource.encrypt(path: tPath, key: tKey));
      verifyNoMoreInteractions(dataSource);
    });
  });

  group("decrypt", () {
    test('should return [Right(tFile)] when call to repo is success', () async {
      // arrange
      when(dataSource.decrypt(path: tPath, key: tKey))
          .thenAnswer((_) async => tFile);
      // act
      final result = await repo.decrypt(path: tPath, key: tKey);
      // assert
      expect(result, Right(tFile));
      verify(dataSource.decrypt(path: tPath, key: tKey));
      verifyNoMoreInteractions(dataSource);
    });

    test(
        'should return [Left(CryptoFailure.invalidKeyFailure())] when [CryptoInvalidKeyException] is thrown',
        () async {
      // arrange
      when(dataSource.decrypt(path: tPath, key: tKey))
          .thenThrow(const CryptoInvalidKeyException());
      // act
      final result = await repo.decrypt(path: tPath, key: tKey);
      // assert
      expect(result, const Left(CryptoFailure.invalidKeyFailure()));
      verify(dataSource.decrypt(path: tPath, key: tKey));
      verifyNoMoreInteractions(dataSource);
    });

    test(
        'should return [Left(CryptoFailure.decryptionFailure())] when [CryptoInvalidInputFileException] is thrown',
        () async {
      // arrange
      when(dataSource.decrypt(path: tPath, key: tKey))
          .thenThrow(const CryptoInvalidInputFileException());
      // act
      final result = await repo.decrypt(path: tPath, key: tKey);
      // assert
      expect(result, const Left(CryptoFailure.decryptionFailure()));
      verify(dataSource.decrypt(path: tPath, key: tKey));
      verifyNoMoreInteractions(dataSource);
    });
  });

  test(
      'should return [unit] when [repo.incrementFileCount(fileSize)] is success',
      () async {
    const int tFileSize = 1;

    // arrange
    when(dataSource.incrementFileCount(tFileSize))
        .thenAnswer((_) async => unit);

    // act
    final result = await repo.incrementFileCount(tFileSize);

    // assert
    expect(result, unit);
    verify(dataSource.incrementFileCount(tFileSize));
    verifyNoMoreInteractions(dataSource);
  });
}
