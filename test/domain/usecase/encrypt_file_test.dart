import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/repository/i_crypto_repo.dart';
import 'package:flutter_encrypto/domain/usecase/encrypt_file.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'encrypt_file_test.mocks.dart';

@GenerateMocks([ICryptoRepo])
void main() {
  late MockICryptoRepo mockRepo;
  late EncryptFile usecase;

  setUp(() {
    mockRepo = MockICryptoRepo();
    usecase = EncryptFile(repo: mockRepo);
  });

  const String tPath = "test/fixtures/path-to-file";
  const String tKey = "123";
  final File tFile = File(tPath);

  test("should call [encrypt] on ICryptoRepo", () async {
    // arrange
    when(mockRepo.encrypt(path: tPath,key: tKey)).thenAnswer((_) async => Right(tFile));
    // act
    final result = await usecase(const PathParams(path: tPath,key: tKey));
    // assert
    expect(result, Right(tFile));
    verify(mockRepo.encrypt(path: tPath,key: tKey));
    verifyNoMoreInteractions(mockRepo);
  });
}
