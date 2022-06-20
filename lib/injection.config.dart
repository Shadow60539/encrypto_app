// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:file_picker/file_picker.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i9;

import 'application/crypto/crypto_bloc.dart' as _i19;
import 'application/save/save_bloc.dart' as _i20;
import 'domain/repository/i_crypto_repo.dart' as _i6;
import 'domain/repository/i_save_repo.dart' as _i15;
import 'domain/usecase/decrypt_file.dart' as _i11;
import 'domain/usecase/encrypt_file.dart' as _i12;
import 'domain/usecase/get_file_count.dart' as _i13;
import 'domain/usecase/increment_file_count.dart' as _i8;
import 'domain/usecase/save_file.dart' as _i17;
import 'domain/usecase/share_file.dart' as _i18;
import 'infrastructure/core/injection_module.dart' as _i21;
import 'infrastructure/core/permission_handler.dart' as _i10;
import 'infrastructure/data/crypto_data_source.dart' as _i5;
import 'infrastructure/data/save_data_source.dart' as _i14;
import 'infrastructure/repo/crypto_repo.dart' as _i7;
import 'infrastructure/repo/save_repo.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final customInjectableModule = _$CustomInjectableModule();
  gh.lazySingleton<_i3.FilePicker>(() => customInjectableModule.filePicker);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => customInjectableModule.firestore);
  gh.factory<_i5.ICryptoDataSource>(
      () => _i5.CryptoDataSource(firestore: get<_i4.FirebaseFirestore>()));
  gh.factory<_i6.ICryptoRepo>(
      () => _i7.CryptoRepo(dataSource: get<_i5.ICryptoDataSource>()));
  gh.factory<_i8.IncrementFileCount>(
      () => _i8.IncrementFileCount(repo: get<_i6.ICryptoRepo>()));
  gh.lazySingleton<_i9.Permission>(() => customInjectableModule.permission);
  gh.factory<_i10.PermissionHandler>(() => _i10.PermissionHandler());
  gh.factory<_i11.DecryptFile>(
      () => _i11.DecryptFile(repo: get<_i6.ICryptoRepo>()));
  gh.factory<_i12.EncryptFile>(
      () => _i12.EncryptFile(repo: get<_i6.ICryptoRepo>()));
  gh.factory<_i13.GetFileCount>(
      () => _i13.GetFileCount(repo: get<_i6.ICryptoRepo>()));
  gh.factory<_i14.ISaveDataSource>(() => _i14.SaveDataSource(
      filePicker: get<_i3.FilePicker>(),
      permissionHandler: get<_i10.PermissionHandler>()));
  gh.factory<_i15.ISaveRepo>(
      () => _i16.SaveRepo(dataSource: get<_i14.ISaveDataSource>()));
  gh.factory<_i17.SaveFile>(() => _i17.SaveFile(repo: get<_i15.ISaveRepo>()));
  gh.factory<_i18.ShareFile>(() => _i18.ShareFile(repo: get<_i15.ISaveRepo>()));
  gh.factory<_i19.CryptoBloc>(() => _i19.CryptoBloc(
      encryptFile: get<_i12.EncryptFile>(),
      decryptFile: get<_i11.DecryptFile>(),
      getFileCount: get<_i13.GetFileCount>(),
      incrementFileCount: get<_i8.IncrementFileCount>()));
  gh.factory<_i20.SaveBloc>(() => _i20.SaveBloc(
      saveFile: get<_i17.SaveFile>(), shareFile: get<_i18.ShareFile>()));
  return get;
}

class _$CustomInjectableModule extends _i21.CustomInjectableModule {}
