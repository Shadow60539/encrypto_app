import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_encrypto/core/enums.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/entity/file_count.dart';
import 'package:flutter_encrypto/domain/failure/crypto_failure.dart';
import 'package:flutter_encrypto/domain/usecase/encrypt_file.dart';
import 'package:flutter_encrypto/domain/usecase/get_file_count.dart';
import 'package:flutter_encrypto/domain/usecase/increment_file_count.dart';
import 'package:flutter_encrypto/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../domain/usecase/decrypt_file.dart';

part 'crypto_bloc.freezed.dart';
part 'crypto_event.dart';
part 'crypto_state.dart';

@injectable
class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  CryptoBloc({
    required this.encryptFile,
    required this.decryptFile,
    required this.getFileCount,
    required this.incrementFileCount,
  }) : super(CryptoState.initial());

  final EncryptFile encryptFile;
  final DecryptFile decryptFile;
  final GetFileCount getFileCount;
  final IncrementFileCount incrementFileCount;

  @override
  Stream<CryptoState> mapEventToState(
    CryptoEvent event,
  ) async* {
    yield* event.map(
      updateSelectedFile: (e) async* {
        final PlatformFile selectedFile = PlatformFile(
          name: e.path.split("/").last,
          size: File(e.path).lengthSync(),
          path: e.path,
        );
        yield state.copyWith(
          selectedFile: selectedFile,
          pickFileOption: some(selectedFile),
          isFromShare: true,
        );
      },
      reset: (_) async* {
        yield state.copyWith(
          failureOrSuccessOption: none(),
          pickFileOption: none(),
          selectedFile: null,
          convertedFile: null,
          cryptionMethod: CryptionMethod.encrypt,
        );
      },
      encrypt: (e) async* {
        yield state.copyWith(
          failureOrSuccessOption: none(),
          cryptionMethod: CryptionMethod.encrypt,
        );

        createIsolate(
          path: state.selectedFile!.path!,
          isEncryption: true,
          key: e.key,
        );
      },
      decrypty: (e) async* {
        yield state.copyWith(
          failureOrSuccessOption: none(),
          cryptionMethod: CryptionMethod.decrypt,
        );

        createIsolate(
          path: state.selectedFile!.path!,
          isEncryption: false,
          key: e.key,
        );
      },
      pickFile: (e) async* {
        yield state.copyWith(
          storagePermissionStatus: null,
          failureOrSuccessOption: none(),
        );
        final PermissionStatus status = await Permission.storage.request();
        yield state.copyWith(storagePermissionStatus: status);
        if (status.isGranted) {
          final FilePickerResult? result =
              await FilePicker.platform.pickFiles(allowMultiple: false);
          if (result == null) {
            yield state.copyWith(
              selectedFile: null,
              pickFileOption: none(),
            );
          } else {
            final PlatformFile selectedFile = result.files.first;
            yield state.copyWith(
                selectedFile: selectedFile, pickFileOption: some(selectedFile));
          }
        }
      },
      updateFailurOrSuccess: (e) async* {
        yield* e.either.fold(
          (l) async* {
            yield state.copyWith(failureOrSuccessOption: some(Left(l)));
          },
          (r) async* {
            await incrementFileCount(FileSizeParams(r.lengthSync()));

            yield state.copyWith(
                convertedFile: r, failureOrSuccessOption: some(Right(r)));
          },
        );
      },
      watchFileCount: (_) async* {
        getFileCount()
            .listen((fileCount) => add(CryptoEvent.updateFileCount(fileCount)));
      },
      updateFileCount: (e) async* {
        yield state.copyWith(fileCount: e.fileCount);
      },
    );
  }

  @override
  void onEvent(CryptoEvent event) {
    log(event.toString());
    super.onEvent(event);
  }
}
