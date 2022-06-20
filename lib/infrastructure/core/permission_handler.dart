import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class PermissionHandler {
  Future<PermissionStatus> requestStoragePermission() =>
      Permission.manageExternalStorage.request();
}
