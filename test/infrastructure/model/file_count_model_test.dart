import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_encrypto/infrastructure/model/file_count_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'file_count_model_test.mocks.dart';

@GenerateMocks([DocumentSnapshot])
void main() {
  late MockDocumentSnapshot<Map<String, dynamic>> snapshot;

  setUp(() {
    snapshot = MockDocumentSnapshot<Map<String, dynamic>>();
  });

  const FileCountModel tFileCountModel =
      FileCountModel(value: 1, size: "1.00kb");
  final Map<String, dynamic> _data = {
    "value": 1,
    "size": "1024",
  };

  test('should return a valid model when [DocumentSnapshot] is passed', () {
    // arrange
    when(snapshot.data()).thenReturn(_data);

    // act
    final result = FileCountModel.fromSnapshot(snapshot);

    // assert
    expect(result, tFileCountModel);
  });
}
