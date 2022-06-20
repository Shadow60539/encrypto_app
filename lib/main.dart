import 'dart:io';
import 'dart:isolate';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_encrypto/core/navigation_service.dart';
import 'package:flutter_encrypto/core/usecase.dart';
import 'package:flutter_encrypto/domain/usecase/encrypt_file.dart';
import 'package:flutter_encrypto/infrastructure/data/crypto_data_source.dart';
import 'package:flutter_encrypto/infrastructure/repo/crypto_repo.dart';
import 'package:flutter_encrypto/presentation/widgets/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'application/crypto/crypto_bloc.dart';
import 'domain/failure/crypto_failure.dart';
import 'domain/usecase/decrypt_file.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(const MyApp());
}

Future<void> createIsolate({
  required String path,
  required String key,
  required bool isEncryption,
}) async {
  ReceivePort mainReceivePort = ReceivePort();

  Isolate.spawn<SendPort>(crytFile, mainReceivePort.sendPort);

  SendPort isolateSendPort = await mainReceivePort.first as SendPort;

  ReceivePort isolateResponseReceivePort = ReceivePort();

  isolateSendPort.send([
    path,
    isEncryption,
    isolateResponseReceivePort.sendPort,
    FirebaseFirestore.instance,
    key,
  ]);

  final isolateResponse = await isolateResponseReceivePort.first;
  final _eitherSuccessOrFailure =
      isolateResponse as Either<CryptoFailure, File>;

  // Update
  BlocProvider.of<CryptoBloc>(globalContext, listen: false)
      .add(CryptoEvent.updateFailurOrSuccess(_eitherSuccessOrFailure));
}

void crytFile(SendPort mySendPort) async {
  ReceivePort isolateReceivePort = ReceivePort();

  mySendPort.send(isolateReceivePort.sendPort);

  await for (var message in isolateReceivePort) {
    final String path = message[0] as String;
    final bool isEncryption = message[1] as bool;
    final SendPort isolateResponseSendPort = message[2] as SendPort;
    final FirebaseFirestore _firestore = message[3] as FirebaseFirestore;
    final String key = message[4] as String;

    final CryptoDataSource dataSource = CryptoDataSource(firestore: _firestore);

    final CryptoRepo repo = CryptoRepo(dataSource: dataSource);

    Usecase<CryptoFailure, File, PathParams>? usecase;

    if (isEncryption) {
      usecase = EncryptFile(repo: repo);
    } else {
      usecase = DecryptFile(repo: repo);
    }

    final eitherSuccessOrFailure =
        await usecase(PathParams(path: path, key: key));

    isolateResponseSendPort.send(eitherSuccessOrFailure);
  }
}
