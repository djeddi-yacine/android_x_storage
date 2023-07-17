
import 'android_x_storage_platform_interface.dart';

class AndroidXStorage {
  Future<int?> getPlatformVersion() {
    return AndroidXStoragePlatform.instance.getPlatformVersion();
  }
}
