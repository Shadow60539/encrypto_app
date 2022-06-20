part of 'save_bloc.dart';

@freezed
class SaveState with _$SaveState {
  const factory SaveState({
    String? fileName,
    required Option<Either<SaveFailure, Unit>> sharefailureOrSuccessOption,
    required Option<Either<SaveFailure, String>> savefailureOrSuccessOption,
  }) = _SaveState;

  factory SaveState.initial() => const SaveState(
        savefailureOrSuccessOption: None(),
        sharefailureOrSuccessOption: None(),
      );
}
