part of 'save_bloc.dart';

@freezed
class SaveEvent with _$SaveEvent {
  const factory SaveEvent.save(String fileName) = _Save;
  const factory SaveEvent.share() = _Share;
}
