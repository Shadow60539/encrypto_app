import 'dart:io';
import 'dart:math';

import 'package:file_picker/file_picker.dart';

extension IntX on int {
  /// convert string number to human readable file size
  /// eg: "321314702" ------> 321.13mb
  String getFileSizeString() {
    const suffixes = ["b", "kb", "mb", "gb", "tb"];
    var i = (log(this) / log(1024)).floor();
    return ((this / pow(1024, i)).toStringAsFixed(2)) + suffixes[i];
  }
}

extension StringX on String {
  String convertTo32BitKey() {
    final int length = this.length;
    final int times = 32 ~/ length;
    final int reminder = 32 % length;
    return (this * times) + substring(0, reminder);
  }
}

extension PlatformFileX on PlatformFile {
  File getFile() {
    return File(path!);
  }
}
