import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@module
abstract class CustomInjectableModule {
  @lazySingleton
  FilePicker get filePicker => FilePicker.platform;

  @lazySingleton
  Permission get permission => Permission.manageExternalStorage;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}
