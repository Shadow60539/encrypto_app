import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/usecase/share_file.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'save_file_test.mocks.dart';

void main() {
  late MockISaveRepo mockRepo;
  late ShareFile usecase;

  setUp(() {
    mockRepo = MockISaveRepo();
    usecase = ShareFile(repo: mockRepo);
  });

  const String tPath = "test/fixtures/path-to-file";
  final File tFile = File(tPath);

  test("should call [share] on ISaveRepo", () async {
    // arrange
    when(mockRepo.share(tFile)).thenAnswer((_) async => const Right(unit));
    // act
    final result = await usecase(ShareParams(tFile));
    // assert
    expect(result, const Right(unit));
    verify(mockRepo.share(tFile));
    verifyNoMoreInteractions(mockRepo);
  });
}
