import 'package:flutter_encrypto/domain/entity/file_count.dart';
import 'package:flutter_encrypto/domain/repository/i_crypto_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetFileCount {
  final ICryptoRepo repo;

  const GetFileCount({required this.repo});

  Stream<FileCount> call() async* {
    yield* repo.fileCountStream();
  }
}
