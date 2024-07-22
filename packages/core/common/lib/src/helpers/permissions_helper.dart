import 'package:dependencies/dependencies.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionsHelper {
  static Future<bool> checkForPhotosPermission() async {
    if (UniversalPlatform.isAndroid || UniversalPlatform.isIOS) {
      await Permission.photos.request();

      if (await Permission.photos.isLimited ||
          await Permission.photos.isGranted) {
        return true;
      } else if (await Permission.photos.isPermanentlyDenied) {
        await openAppSettings();
      }
      return false;
    }
    return false;
  }
}
