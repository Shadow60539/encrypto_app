part of 'crypto_bloc.dart';

@freezed
class CryptoState with _$CryptoState {
  const factory CryptoState({
    File? convertedFile,
    FileCount? fileCount,
    PlatformFile? selectedFile,
    PermissionStatus? storagePermissionStatus,
    required CryptionMethod cryptionMethod,
    required Option<Either<CryptoFailure, File>> failureOrSuccessOption,
    required Option<PlatformFile> pickFileOption,
    required bool isFromShare,
  }) = _CryptoState;

  factory CryptoState.initial() => CryptoState(
        failureOrSuccessOption: none(),
        isFromShare: false,
        pickFileOption: none(),
        selectedFile: null,
        convertedFile: null,
        cryptionMethod: CryptionMethod.encrypt,
      );
}
