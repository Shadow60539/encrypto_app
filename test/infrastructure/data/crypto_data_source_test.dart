import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_encrypto/infrastructure/data/crypto_data_source.dart';
import 'package:flutter_encrypto/infrastructure/exception/crypto_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  // TestWidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  late CryptoDataSource dataSource;
  late FakeFirebaseFirestore firestore;

  setUp(() async {
    firestore = FakeFirebaseFirestore();
    dataSource = CryptoDataSource(firestore: firestore);
  });
  group('encrypt', () {
    const String tCorrectPath = "test/fixtures/sample.docx";
    const String tKey = "123";
    const String tWrongPath = "path";
    test(
        'should throw [CryptoInvalidInputFileException] when encrypted file is given as input',
        () {
      // act
      final result = dataSource.encrypt(path: tWrongPath, key: tKey);
      // assert
      expect(() => result,
          throwsA(const TypeMatcher<CryptoInvalidInputFileException>()));
    });
    test('should return File when success', () async {
      // act
      final result = await dataSource.encrypt(path: tCorrectPath, key: tKey);
      // assert
      expect(result, isA<File>());
    });
  });

  group('decrypt', () {
    const String tCorrectPath = "test/fixtures/en_sample.docx";
    const String tKey = "123";
    const String tWrongKey = "abc";
    const String tWrongPath = "test/fixtures/sample.docx";
    test(
        'should throw [CryptoInvalidInputFileException] when non encrypted file is given as input',
        () {
      // act
      final result = dataSource.decrypt(path: tWrongPath, key: tKey);
      // assert
      expect(() => result,
          throwsA(const TypeMatcher<CryptoInvalidInputFileException>()));
    });
    test(
        'should throw [CryptoInvalidKeyException] when the given key is wrong key',
        () {
      // act
      final result = dataSource.decrypt(path: tCorrectPath, key: tWrongKey);
      // assert
      expect(() => result,
          throwsA(const TypeMatcher<CryptoInvalidKeyException>()));
    });
    test('should return File when success', () async {
      // act
      final result = await dataSource.decrypt(path: tCorrectPath, key: tKey);
      // assert
      expect(result, isA<File>());
    });
  });

  test('should increment file count', () async {
    // arrange
    final ref = firestore.collection('file_collection').doc("count");
    await ref.set(
      {
        'value': 1,
        'size': "1",
      },
    );

    const int tFileSize = 1;

    // act
    final result = await dataSource.incrementFileCount(tFileSize);

    // assert
    expect(result, unit);
    expect((await ref.get())["value"], 2);
    expect((await ref.get())["size"], "2");
  });
}
