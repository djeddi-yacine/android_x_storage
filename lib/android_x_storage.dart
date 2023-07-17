import 'android_x_storage_platform_interface.dart';

class AndroidXStorage {
  Future<int?> getPlatformVersion() {
    return AndroidXStoragePlatform.instance.getPlatformVersion();
  }

  Future<String?> getExternalStorageDirectory() async {
    return AndroidXStoragePlatform.instance.getExternalStorageDirectory();
  }

  Future<String?> getSDCardStorageDirectory() async {
    return AndroidXStoragePlatform.instance.getSDCardStorageDirectory();
  }

  Future<List<String>?> getUSBStorageDirectories() async {
    return AndroidXStoragePlatform.instance.getUSBStorageDirectories();
  }

  Future<String?> getMusicDirectory() async {
    return AndroidXStoragePlatform.instance.getMusicDirectory();
  }

  Future<String?> getAlarmsDirectory() async {
    return AndroidXStoragePlatform.instance.getAlarmsDirectory();
  }

  Future<String?> getNotificationsDirectory() async {
    return AndroidXStoragePlatform.instance.getNotificationsDirectory();
  }

  Future<String?> getPicturesDirectory() async {
    return AndroidXStoragePlatform.instance.getPicturesDirectory();
  }

  Future<String?> getDCIMDirectory() async {
    return AndroidXStoragePlatform.instance.getDCIMDirectory();
  }

  Future<String?> getMoviesDirectory() async {
    return AndroidXStoragePlatform.instance.getMoviesDirectory();
  }

  Future<String?> getRingtonesDirectory() async {
    return AndroidXStoragePlatform.instance.getRingtonesDirectory();
  }

  Future<String?> getPodcastsDirectory() async {
    return AndroidXStoragePlatform.instance.getPodcastsDirectory();
  }

  Future<String?> getDownloadsDirectory() async {
    return AndroidXStoragePlatform.instance.getDownloadsDirectory();
  }

  Future<String?> getDocumentsDirectory() async {
    return AndroidXStoragePlatform.instance.getDocumentsDirectory();
  }
}
