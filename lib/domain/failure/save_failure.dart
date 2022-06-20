import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_failure.freezed.dart';

@freezed
class SaveFailure with _$SaveFailure {
  /// When the saving process is cancelled by the user
  const factory SaveFailure.userCancelled() = _SaveUserCancelledFailure;

  /// When the user declines the storage permission
  const factory SaveFailure.permissionDenied() = _SavePermissionDeniedFailure;

  const factory SaveFailure.unexpected() = _SaveUnexpectedFailure;
}
