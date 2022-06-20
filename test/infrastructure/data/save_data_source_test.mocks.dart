// Mocks generated by Mockito 5.2.0 from annotations
// in flutter_encrypto/test/infrastructure/data/save_data_source_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:file_picker/src/file_picker.dart' as _i2;
import 'package:file_picker/src/file_picker_result.dart' as _i4;
import 'package:flutter_encrypto/infrastructure/core/permission_handler.dart'
    as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:permission_handler/permission_handler.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [FilePicker].
///
/// See the documentation for Mockito's code generation for more information.
class MockFilePicker extends _i1.Mock implements _i2.FilePicker {
  MockFilePicker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i4.FilePickerResult?> pickFiles(
          {String? dialogTitle,
          String? initialDirectory,
          _i2.FileType? type = _i2.FileType.any,
          List<String>? allowedExtensions,
          dynamic Function(_i2.FilePickerStatus)? onFileLoading,
          bool? allowCompression = true,
          bool? allowMultiple = false,
          bool? withData = false,
          bool? withReadStream = false,
          bool? lockParentWindow = false}) =>
      (super.noSuchMethod(
              Invocation.method(#pickFiles, [], {
                #dialogTitle: dialogTitle,
                #initialDirectory: initialDirectory,
                #type: type,
                #allowedExtensions: allowedExtensions,
                #onFileLoading: onFileLoading,
                #allowCompression: allowCompression,
                #allowMultiple: allowMultiple,
                #withData: withData,
                #withReadStream: withReadStream,
                #lockParentWindow: lockParentWindow
              }),
              returnValue: Future<_i4.FilePickerResult?>.value())
          as _i3.Future<_i4.FilePickerResult?>);
  @override
  _i3.Future<bool?> clearTemporaryFiles() =>
      (super.noSuchMethod(Invocation.method(#clearTemporaryFiles, []),
          returnValue: Future<bool?>.value()) as _i3.Future<bool?>);
  @override
  _i3.Future<String?> getDirectoryPath(
          {String? dialogTitle,
          bool? lockParentWindow = false,
          String? initialDirectory}) =>
      (super.noSuchMethod(
          Invocation.method(#getDirectoryPath, [], {
            #dialogTitle: dialogTitle,
            #lockParentWindow: lockParentWindow,
            #initialDirectory: initialDirectory
          }),
          returnValue: Future<String?>.value()) as _i3.Future<String?>);
  @override
  _i3.Future<String?> saveFile(
          {String? dialogTitle,
          String? fileName,
          String? initialDirectory,
          _i2.FileType? type = _i2.FileType.any,
          List<String>? allowedExtensions,
          bool? lockParentWindow = false}) =>
      (super.noSuchMethod(
          Invocation.method(#saveFile, [], {
            #dialogTitle: dialogTitle,
            #fileName: fileName,
            #initialDirectory: initialDirectory,
            #type: type,
            #allowedExtensions: allowedExtensions,
            #lockParentWindow: lockParentWindow
          }),
          returnValue: Future<String?>.value()) as _i3.Future<String?>);
}

/// A class which mocks [PermissionHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockPermissionHandler extends _i1.Mock implements _i5.PermissionHandler {
  MockPermissionHandler() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i6.PermissionStatus> requestStoragePermission() =>
      (super.noSuchMethod(Invocation.method(#requestStoragePermission, []),
              returnValue: Future<_i6.PermissionStatus>.value(
                  _i6.PermissionStatus.denied))
          as _i3.Future<_i6.PermissionStatus>);
}
