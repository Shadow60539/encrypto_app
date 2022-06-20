import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/failure/save_failure.dart';
import 'package:flutter_encrypto/domain/repository/i_save_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveFile extends Usecase<SaveFailure, String, SaveParams> {
  final ISaveRepo repo;

  SaveFile({required this.repo});

  @override
  Future<Either<SaveFailure, String>> call(SaveParams params) async {
    return await repo.saveFileToDevice(
        file: params.file, fileName: params.fileName);
  }
}
