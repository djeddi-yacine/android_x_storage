import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_x_storage_method_channel.dart';

abstract class AndroidXStoragePlatform extends PlatformInterface {
  /// Constructs a AndroidXStoragePlatform.
  AndroidXStoragePlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidXStoragePlatform _instance = MethodChannelAndroidXStorage();

  /// The default instance of [AndroidXStoragePlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidXStorage].
  static AndroidXStoragePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidXStoragePlatform] when
  /// they register themselves.
  static set instance(AndroidXStoragePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Returns the platform version.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<int?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  /// Returns the external storage directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getExternalStorageDirectory() {
    throw UnimplementedError(
        'getExternalStorageDirectory() has not been implemented.');
  }

  /// Returns the SD card storage directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getSDCardStorageDirectory() {
    throw UnimplementedError(
        'getSDCardStorageDirectory() has not been implemented.');
  }

  /// Returns the USB storage directories.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<List<String?>> getUSBStorageDirectories() {
    throw UnimplementedError(
        'getUSBStorageDirectories() has not been implemented.');
  }

  /// Returns the music directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getMusicDirectory() {
    throw UnimplementedError('getMusicDirectory() has not been implemented.');
  }

  /// Returns the alarms directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getAlarmsDirectory() {
    throw UnimplementedError('getAlarmsDirectory() has not been implemented.');
  }

  /// Returns the notifications directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getNotificationsDirectory() {
    throw UnimplementedError(
        'getNotificationsDirectory() has not been implemented.');
  }

  /// Returns the pictures directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getPicturesDirectory() {
    throw UnimplementedError(
        'getPicturesDirectory() has not been implemented.');
  }

  /// Returns the DCIM directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getDCIMDirectory() {
    throw UnimplementedError('getDCIMDirectory() has not been implemented.');
  }

  /// Returns the movies directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getMoviesDirectory() {
    throw UnimplementedError('getMoviesDirectory() has not been implemented.');
  }

  /// Returns the ringtones directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getRingtonesDirectory() {
    throw UnimplementedError(
        'getRingtonesDirectory() has not been implemented.');
  }

  /// Returns the podcasts directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getPodcastsDirectory() {
    throw UnimplementedError(
        'getPodcastsDirectory() has not been implemented.');
  }

  /// Returns the downloads directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getDownloadsDirectory() {
    throw UnimplementedError(
        'getDownloadsDirectory() has not been implemented.');
  }

  /// Returns the documents directory.
  ///
  /// This method should be implemented by the platform-specific class.
  Future<String?> getDocumentsDirectory() {
    throw UnimplementedError(
        'getDocumentsDirectory() has not been implemented.');
  }
}
