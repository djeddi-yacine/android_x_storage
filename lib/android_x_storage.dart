import 'android_x_storage_platform_interface.dart';

class AndroidXStorage {
  /// Retrieves the platform version of Android.
  Future<int?> getPlatformVersion() {
    return AndroidXStoragePlatform.instance.getPlatformVersion();
  }

  /// Retrieves the external storage directory path.
  Future<String?> getExternalStorageDirectory() async {
    return AndroidXStoragePlatform.instance.getExternalStorageDirectory();
  }

  /// Retrieves the SD card storage directory path.
  Future<String?> getSDCardStorageDirectory() async {
    return AndroidXStoragePlatform.instance.getSDCardStorageDirectory();
  }

  /// Retrieves a list of USB storage directories.
  Future<List<String?>> getUSBStorageDirectories() async {
    return AndroidXStoragePlatform.instance.getUSBStorageDirectories();
  }

  /// Retrieves the music directory path.
  Future<String?> getMusicDirectory() async {
    return AndroidXStoragePlatform.instance.getMusicDirectory();
  }

  /// Retrieves the alarms directory path.
  Future<String?> getAlarmsDirectory() async {
    return AndroidXStoragePlatform.instance.getAlarmsDirectory();
  }

  /// Retrieves the notifications directory path.
  Future<String?> getNotificationsDirectory() async {
    return AndroidXStoragePlatform.instance.getNotificationsDirectory();
  }

  /// Retrieves the pictures directory path.
  Future<String?> getPicturesDirectory() async {
    return AndroidXStoragePlatform.instance.getPicturesDirectory();
  }

  /// Retrieves the DCIM directory path.
  Future<String?> getDCIMDirectory() async {
    return AndroidXStoragePlatform.instance.getDCIMDirectory();
  }

  /// Retrieves the movies directory path.
  Future<String?> getMoviesDirectory() async {
    return AndroidXStoragePlatform.instance.getMoviesDirectory();
  }

  /// Retrieves the ringtones directory path.
  Future<String?> getRingtonesDirectory() async {
    return AndroidXStoragePlatform.instance.getRingtonesDirectory();
  }

  /// Retrieves the podcasts directory path.
  Future<String?> getPodcastsDirectory() async {
    return AndroidXStoragePlatform.instance.getPodcastsDirectory();
  }

  /// Retrieves the downloads directory path.
  Future<String?> getDownloadsDirectory() async {
    return AndroidXStoragePlatform.instance.getDownloadsDirectory();
  }

  /// Retrieves the documents directory path.
  Future<String?> getDocumentsDirectory() async {
    return AndroidXStoragePlatform.instance.getDocumentsDirectory();
  }
}
