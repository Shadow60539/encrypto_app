import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_exception.freezed.dart';

@freezed
class SaveException with _$SaveException {
  /// When the saving process is cancelled by the user
  const factory SaveException.userCancelled() = SaveUserCancelledException;

  /// When the user declines the storage permission
  const factory SaveException.permissionDenied() =
      SavePermissionDeniedException;

  const factory SaveException.unexpected() = SaveUnexpectedException;
}
