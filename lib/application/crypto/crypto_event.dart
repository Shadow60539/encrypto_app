part of 'crypto_bloc.dart';

@freezed
class CryptoEvent with _$CryptoEvent {
  const factory CryptoEvent.watchFileCount() = _WatchFileCount;
  const factory CryptoEvent.updateFileCount(FileCount fileCount) = _UpdateFileCount;
  const factory CryptoEvent.pickFile() = _PickFile;
  const factory CryptoEvent.updateSelectedFile(String path) = _UpdateSelectedFile;
  const factory CryptoEvent.encrypt(String key) = _Encrypt;
  const factory CryptoEvent.decrypty(String key) = _Decrypt;
  const factory CryptoEvent.reset() = _Reset;
  const factory CryptoEvent.updateFailurOrSuccess(Either<CryptoFailure, File> either) = _UpdateFailurOrSuccess;
}
