import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_encrypto/infrastructure/core/permission_handler.dart';
import 'package:flutter_encrypto/infrastructure/exception/save_exception.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

abstract class ISaveDataSource {
  Future<String> save({required File file, required String fileName});
  Future<Unit> share(File file);
}

@Injectable(as: ISaveDataSource)
class SaveDataSource extends ISaveDataSource {
  final FilePicker filePicker;
  final PermissionHandler permissionHandler;

  SaveDataSource({
    required this.filePicker,
    required this.permissionHandler,
  });

  @override
  Future<String> save({required File file, required String fileName}) async {
    final path = await filePicker.getDirectoryPath();
    if (path == null) throw const SaveUserCancelledException();

    final copyPath = path + "/" + fileName;

    final status = await permissionHandler.requestStoragePermission();

    if (status == PermissionStatus.granted) {
      File fileDef = File(copyPath);
      await fileDef.create(recursive: true);
      Uint8List bytes = await file.readAsBytes();
      await fileDef.writeAsBytes(bytes);
      return copyPath;
    } else {
      throw const SavePermissionDeniedException();
    }
  }

  @override
  Future<Unit> share(File file) async {
    try {
      final directory = await getTemporaryDirectory();
      final rootDirectoryPath = directory.path.replaceAll("/file_picker", "");
      File zipFile = File(rootDirectoryPath + "/archive.zip");
      // await file.writeAsBytes(await encryptedFile.readAsBytes());
      await ZipFile.createFromFiles(
        sourceDir: Directory.fromUri(Uri.file(directory.path +
            (file.path.contains("file_picker") ? "/file_picker" : ""))),
        files: [file],
        zipFile: zipFile,
      );
      await Share.shareFiles([zipFile.path]);
      return unit;
    } catch (_) {
      throw const SaveUnexpectedException();
    }
  }
}
