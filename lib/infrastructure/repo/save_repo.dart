import 'package:flutter_encrypto/domain/failure/save_failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:flutter_encrypto/domain/repository/i_save_repo.dart';
import 'package:flutter_encrypto/infrastructure/data/save_data_source.dart';
import 'package:flutter_encrypto/infrastructure/exception/save_exception.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ISaveRepo)
class SaveRepo extends ISaveRepo {
  final ISaveDataSource dataSource;

  SaveRepo({required this.dataSource});

  @override
  Future<Either<SaveFailure, String>> saveFileToDevice(
      {required File file, required String fileName}) async {
    try {
      final result = await dataSource.save(file: file, fileName: fileName);
      return Right(result);
    } on SaveUnexpectedException {
      return const Left(SaveFailure.unexpected());
    } on SaveUserCancelledException {
      return const Left(SaveFailure.userCancelled());
    } on SavePermissionDeniedException {
      return const Left(SaveFailure.permissionDenied());
    }
  }

  @override
  Future<Either<SaveFailure, Unit>> share(File file) async {
    try {
      final result = await dataSource.share(file);
      return Right(result);
    } on SaveUnexpectedException {
      return const Left(SaveFailure.unexpected());
    }
  }
}
