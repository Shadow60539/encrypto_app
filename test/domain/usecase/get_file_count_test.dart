import 'package:flutter_encrypto/domain/entity/file_count.dart';
import 'package:flutter_encrypto/domain/usecase/get_file_count.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'encrypt_file_test.mocks.dart';

void main() {
  late MockICryptoRepo repo;
  late GetFileCount usecase;

  setUp(() {
    repo = MockICryptoRepo();
    usecase = GetFileCount(repo: repo);
  });

  const FileCount tFileCount = FileCount(value: 1, size: "1");
  final Stream<FileCount> tFileCountStream = Stream.value(tFileCount);

  test("should call [fileCountStream] on ICryptoRepo", () async {
    // arrange
    when(repo.fileCountStream()).thenAnswer((_) => tFileCountStream);

    // act
    final result = usecase();

    // assert
    expectLater(result, emits(tFileCount));
    await untilCalled(repo.fileCountStream());
    verify(repo.fileCountStream());
    verifyNoMoreInteractions(repo);
  });
}
