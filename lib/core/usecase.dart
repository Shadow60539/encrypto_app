import 'dart:io';

import 'package:dartz/dartz.dart';

abstract class Usecase<Failure, T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class PathParams {
  final String path;
  final String key;

  const PathParams({
    required this.path,
    required this.key,
  });
}

class SaveParams {
  final File file;
  final String fileName;

  const SaveParams({required this.file, required this.fileName});
}

class ShareParams {
  final File file;

  const ShareParams(this.file);
}

class FileSizeParams {
  final int fileSize;

  const FileSizeParams(this.fileSize);
}

class NoParams {
  const NoParams();
}
