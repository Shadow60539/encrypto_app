import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/failure/crypto_failure.dart';
import 'package:flutter_encrypto/domain/repository/i_crypto_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class EncryptFile extends Usecase<CryptoFailure, File, PathParams> {
  final ICryptoRepo repo;

  EncryptFile({required this.repo});

  @override
  Future<Either<CryptoFailure, File>> call(PathParams params) async {
    return await repo.encrypt(path: params.path, key: params.key);
  }
}
