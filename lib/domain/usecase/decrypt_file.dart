import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/failure/crypto_failure.dart';
import 'package:flutter_encrypto/domain/repository/i_crypto_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class DecryptFile extends Usecase<CryptoFailure, File, PathParams> {
  final ICryptoRepo repo;

  DecryptFile({required this.repo});

  @override
  Future<Either<CryptoFailure, File>> call(PathParams params) async {
    return await repo.decrypt(path: params.path, key: params.key);
  }
}
