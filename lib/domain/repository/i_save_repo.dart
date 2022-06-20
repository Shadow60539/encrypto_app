import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_encrypto/domain/failure/save_failure.dart';
import 'package:flutter_encrypto/infrastructure/exception/save_exception.dart';

abstract class ISaveRepo {
  /// Save the specified [file] to device as [fileName]
  ///
  /// * Returns a [SaveFailure] on [SaveException]
  /// * Returns the path of newly created file when success
  Future<Either<SaveFailure, String>> saveFileToDevice({
    required File file,
    required String fileName,
  });

  /// Share the specified [file]
  ///
  /// Returns a [SaveFailure] on [SaveException]
  Future<Either<SaveFailure, Unit>> share(File file);
}
