import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:file_cryptor/file_cryptor.dart';
import 'package:flutter_encrypto/core/extension.dart';
import 'package:flutter_encrypto/infrastructure/core/firebase_helper.dart';
import 'package:flutter_encrypto/infrastructure/exception/crypto_exception.dart';
import 'package:flutter_encrypto/infrastructure/model/file_count_model.dart';
import 'package:injectable/injectable.dart';

const int _iv = 16;

abstract class ICryptoDataSource {
  Future<File> encrypt({
    required String path,
    required String key,
  });
  Future<File> decrypt({
    required String path,
    required String key,
  });
  Future<Unit> incrementFileCount(int fileSize);
  Stream<FileCountModel> fileCountStream();
}

class FileCryptoX {
  static FileCryptor fromPath({
    required String path,
    required String key,
  }) {
    final String input = path.split("/").last;
    String dir = path.replaceAll(input, "");

    final bool _isTesting = Platform.environment.containsKey('FLUTTER_TEST');

    if (_isTesting) {
      dir = "test/fixtures";
    }

    return FileCryptor(
      key: key.convertTo32BitKey(),
      iv: _iv,
      dir: dir,
    );
  }
}

@Injectable(as: ICryptoDataSource)
class CryptoDataSource extends ICryptoDataSource {
  CryptoDataSource({required this.firestore});

  final FirebaseFirestore firestore;

  @override
  Future<File> encrypt({
    required String path,
    required String key,
  }) async {
    try {
      final String input = path.split("/").last;

      final fileCryptor = FileCryptoX.fromPath(path: path, key: key);

      File encryptedFile = await fileCryptor.encrypt(
          inputFile: input, outputFile: "en_" + input);

      return encryptedFile;
    } catch (_) {
      throw const CryptoInvalidInputFileException();
    }
  }

  @override
  Future<File> decrypt({
    required String path,
    required String key,
  }) async {
    try {
      final String input = path.split("/").last;

      final fileCryptor = FileCryptoX.fromPath(path: path, key: key);

      File decryptedFile = await fileCryptor.decrypt(
          inputFile: input, outputFile: "de_" + input);

      return decryptedFile;
    } catch (e) {
      if (e is ArgumentError) {
        final bool isNotEncryptedFile = e.message.toString().contains("cipher");

        if (isNotEncryptedFile) {
          throw const CryptoInvalidInputFileException();
        } else {
          throw const CryptoInvalidKeyException();
        }
      } else {
        throw const CryptoInvalidInputFileException();
      }
    }
  }

  @override
  Stream<FileCountModel> fileCountStream() async* {
    yield* firestore
        .getCountDoc()
        .snapshots()
        .map((snapshot) => FileCountModel.fromSnapshot(snapshot));
  }

  @override
  Future<Unit> incrementFileCount(int fileSize) async {
    final DocumentReference<Map<String, dynamic>> _ref =
        firestore.getCountDoc();
    final String _latestSize = (await _ref.get()).data()!["size"] as String;
    final String _updatedSize =
        (BigInt.parse(_latestSize) + BigInt.from(fileSize)).toString();
    await firestore.getCountDoc().update({
      "value": FieldValue.increment(1),
      "size": _updatedSize,
    });
    return unit;
  }
}
