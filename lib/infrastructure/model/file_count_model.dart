import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_encrypto/core/extension.dart';
import 'package:flutter_encrypto/domain/entity/file_count.dart';

class FileCountModel extends FileCount {
  const FileCountModel({
    required int value,
    required String size,
  }) : super(value: value, size: size);

  factory FileCountModel.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final int _value = snapshot.data()!["value"] as int;
    final String _size = snapshot.data()!["size"] as String;

    final String _fileSizeString =
        BigInt.parse(_size).toInt().getFileSizeString();

    return FileCountModel(
      value: _value,
      size: _fileSizeString,
    );
  }
}
