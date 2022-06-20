import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/failure/save_failure.dart';
import 'package:flutter_encrypto/domain/repository/i_save_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class ShareFile extends Usecase<SaveFailure, Unit, ShareParams> {
  final ISaveRepo repo;

  ShareFile({required this.repo});

  @override
  Future<Either<SaveFailure, Unit>> call(ShareParams params) async {
    return await repo.share(params.file);
  }
}
