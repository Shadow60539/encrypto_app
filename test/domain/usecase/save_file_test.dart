import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/repository/i_save_repo.dart';
import 'package:flutter_encrypto/domain/usecase/save_file.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'save_file_test.mocks.dart';

@GenerateMocks([ISaveRepo])
void main() {
  late MockISaveRepo mockRepo;
  late SaveFile usecase;

  setUp(() {
    mockRepo = MockISaveRepo();
    usecase = SaveFile(repo: mockRepo);
  });

  const String tFileName = "fileName.ext";
  const String tPath = "test/fixtures/path-to-file";
  final File tFile = File(tPath);

  test("should call [saveFileToDevice] on ISaveRepo", () async {
    // arrange
    when(mockRepo.saveFileToDevice(file: tFile, fileName: tFileName))
        .thenAnswer((_) async => const Right(tPath));
    // act
    final result = await usecase(SaveParams(file: tFile, fileName: tFileName));
    // assert
    expect(result, const Right(tPath));
    verify(mockRepo.saveFileToDevice(file: tFile, fileName: tFileName));
    verifyNoMoreInteractions(mockRepo);
  });
}
