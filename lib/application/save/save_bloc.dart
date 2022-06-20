import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_encrypto/application/crypto/crypto_bloc.dart';
import 'package:flutter_encrypto/core/navigation_service.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/usecase/save_file.dart';
import 'package:flutter_encrypto/domain/usecase/share_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/failure/save_failure.dart';

part 'save_bloc.freezed.dart';
part 'save_event.dart';
part 'save_state.dart';

@injectable
class SaveBloc extends Bloc<SaveEvent, SaveState> {
  SaveBloc({
    required this.saveFile,
    required this.shareFile,
  }) : super(SaveState.initial());

  final SaveFile saveFile;
  final ShareFile shareFile;

  final CryptoBloc cryptoBloc = BlocProvider.of<CryptoBloc>(globalContext);

  @override
  Stream<SaveState> mapEventToState(SaveEvent event) async* {
    yield* event.map(
      save: (e) async* {
        yield SaveState.initial();
        final failureOrSuccess = await saveFile(SaveParams(
          file: cryptoBloc.state.convertedFile!,
          fileName: e.fileName,
        ));

        yield failureOrSuccess.fold(
          (l) => state.copyWith(savefailureOrSuccessOption: Some(Left(l))),
          (r) => state.copyWith(
            savefailureOrSuccessOption: Some(Right(r)),
          ),
        );
      },
      share: (e) async* {
        yield SaveState.initial();
        final failureOrSuccess =
            await shareFile(ShareParams(cryptoBloc.state.convertedFile!));

        yield failureOrSuccess.fold(
          (l) => state.copyWith(sharefailureOrSuccessOption: Some(Left(l))),
          (r) => state.copyWith(
            sharefailureOrSuccessOption: const Some(Right(unit)),
          ),
        );
      },
    );
  }

  @override
  void onEvent(SaveEvent event) {
    log(event.toString());
    super.onEvent(event);
  }
}
