import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_encrypto/infrastructure/core/permission_handler.dart';
import 'package:flutter_encrypto/infrastructure/data/save_data_source.dart';
import 'package:flutter_encrypto/infrastructure/exception/save_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler/permission_handler.dart';

import 'save_data_source_test.mocks.dart';

@GenerateMocks([FilePicker, PermissionHandler])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockFilePicker filePicker;
  late MockPermissionHandler permissionHandler;
  late SaveDataSource dataSource;

  setUp(() {
    permissionHandler = MockPermissionHandler();
    filePicker = MockFilePicker();
    dataSource = SaveDataSource(
        filePicker: filePicker, permissionHandler: permissionHandler);
  });

  final File tFile = File("test/fixtures/sample.docx");
  const String tPath = "test/fixtures";
  const String tFileName = "sample.docx";

  group("save", () {
    test('should throw [SaveUserCancelledException] when path is null', () {
      // arrange
      when(filePicker.getDirectoryPath()).thenAnswer((_) async => null);

      // act
      final result = dataSource.save(file: tFile, fileName: tFileName);

      // assert
      expect(() => result,
          throwsA(const TypeMatcher<SaveUserCancelledException>()));
    });
    test(
        'should throw [SavePermissionDeniedException] when user denies storage permission',
        () {
      // arrange
      when(filePicker.getDirectoryPath()).thenAnswer((_) async => "/test/fixtures");
      when(permissionHandler.requestStoragePermission())
          .thenAnswer((_) async => PermissionStatus.denied);
      // act
      final result = dataSource.save(file: tFile, fileName: tFileName);

      // assert
      expect(() => result,
          throwsA(const TypeMatcher<SavePermissionDeniedException>()));
    });
    test('should return [unit] when success', () async {
      // arrange
      when(filePicker.getDirectoryPath()).thenAnswer((_) async => tPath);
      when(permissionHandler.requestStoragePermission())
          .thenAnswer((_) async => PermissionStatus.granted);
      // act
      final result = await dataSource.save(file: tFile, fileName: tFileName);

      // assert
      expect(result, tPath + "/" + tFileName);
    });
  });
}
