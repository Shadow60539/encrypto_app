import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/usecase/increment_file_count.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'encrypt_file_test.mocks.dart';

void main() {
  late MockICryptoRepo repo;
  late IncrementFileCount usecase;

  setUp(() {
    repo = MockICryptoRepo();
    usecase = IncrementFileCount(repo: repo);
  });

  const int tFileSize = 1;

  test('should call [incrementFileCount(fileSize)] on ICryptoRepo', () async {
    // arrange
    when(repo.incrementFileCount(tFileSize)).thenAnswer((_) async => unit);

    // act
    final result = await usecase(const FileSizeParams(tFileSize));

    // assert
    expect(result, unit);
    verify(repo.incrementFileCount(tFileSize));
    verifyNoMoreInteractions(repo);
  });
}
