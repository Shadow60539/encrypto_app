import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/domain/failure/save_failure.dart';
import 'package:flutter_encrypto/infrastructure/data/save_data_source.dart';
import 'package:flutter_encrypto/infrastructure/exception/save_exception.dart';
import 'package:flutter_encrypto/infrastructure/repo/save_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'save_repo_test.mocks.dart';

@GenerateMocks([ISaveDataSource])
void main() {
  late MockISaveDataSource dataSource;
  late SaveRepo repo;

  setUp(() {
    dataSource = MockISaveDataSource();
    repo = SaveRepo(dataSource: dataSource);
  });

  const String tFileName = "fileName.ext";
  final File tFile = File("test/fixtures/path");

  group('saveToDevice', () {
    test('should return [Right(unit)] when call to repo is success', () async {
      // arrange
      when(dataSource.save(file: tFile, fileName: tFileName))
          .thenAnswer((_) async => "path");
      // act
      final result =
          await repo.saveFileToDevice(file: tFile, fileName: tFileName);
      // assert
      expect(result, const Right("path"));
      verify(dataSource.save(file: tFile, fileName: tFileName));
      verifyNoMoreInteractions(dataSource);
    });
    test(
        'should return [Left(SaveFailure.unexpected())] when [SaveUnexpectedException] is thrown',
        () async {
      // arrange
      when(dataSource.save(file: tFile, fileName: tFileName))
          .thenThrow(const SaveUnexpectedException());
      // act
      final result =
          await repo.saveFileToDevice(file: tFile, fileName: tFileName);
      // assert
      expect(result, const Left(SaveFailure.unexpected()));
      verify(dataSource.save(file: tFile, fileName: tFileName));
      verifyNoMoreInteractions(dataSource);
    });
    test(
        'should return [Left(SaveFailure.userCancelled())] when [SaveUserCancelledException] is thrown',
        () async {
      // arrange
      when(dataSource.save(file: tFile, fileName: tFileName))
          .thenThrow(const SaveUserCancelledException());
      // act
      final result =
          await repo.saveFileToDevice(file: tFile, fileName: tFileName);
      // assert
      expect(result, const Left(SaveFailure.userCancelled()));
      verify(dataSource.save(file: tFile, fileName: tFileName));
      verifyNoMoreInteractions(dataSource);
    });
    test(
        'should return [Left(SaveFailure.permissionDenied())] when [SavePermissionDeniedException] is thrown',
        () async {
      // arrange
      when(dataSource.save(file: tFile, fileName: tFileName))
          .thenThrow(const SavePermissionDeniedException());
      // act
      final result =
          await repo.saveFileToDevice(file: tFile, fileName: tFileName);
      // assert
      expect(result, const Left(SaveFailure.permissionDenied()));
      verify(dataSource.save(file: tFile, fileName: tFileName));
      verifyNoMoreInteractions(dataSource);
    });
  });

  group('share', () {
    test('should return [Right(unit)] when call to repo is success', () async {
      // arrange
      when(dataSource.share(tFile)).thenAnswer((_) async => unit);
      // act
      final result = await repo.share(tFile);
      // assert
      expect(result, const Right(unit));
      verify(dataSource.share(tFile));
      verifyNoMoreInteractions(dataSource);
    });
    test(
        'should return [Left(SaveFailure.unexpected())] when [SaveUnexpectedException] is thrown',
        () async {
      // arrange
      when(dataSource.share(tFile)).thenThrow(const SaveUnexpectedException());
      // act
      final result = await repo.share(tFile);
      // assert
      expect(result, const Left(SaveFailure.unexpected()));
      verify(dataSource.share(tFile));
      verifyNoMoreInteractions(dataSource);
    });
  });
}
