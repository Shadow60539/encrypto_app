import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/repository/i_crypto_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class IncrementFileCount {
  final ICryptoRepo repo;

  const IncrementFileCount({required this.repo});

  Future<Unit> call(FileSizeParams params) async {
    return await repo.incrementFileCount(params.fileSize);
  }
}
