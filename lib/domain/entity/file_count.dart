import 'package:equatable/equatable.dart';

class FileCount extends Equatable {
  /// Total number of the files converted globally
  final int value;

  /// Total size of the files converted globally
  final String size;

  const FileCount({required this.value, required this.size});

  @override
  List<Object?> get props => [value, size];
}
