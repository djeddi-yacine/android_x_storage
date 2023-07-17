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

  Future<int?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getExternalStorageDirectory() {
    throw UnimplementedError(
        'getExternalStorageDirectory() has not been implemented.');
  }

  Future<String?> getSDCardStorageDirectory() {
    throw UnimplementedError(
        'getSDCardStorageDirectory() has not been implemented.');
  }

  Future<List<String>?> getUSBStorageDirectories() {
    throw UnimplementedError(
        'getUSBStorageDirectories() has not been implemented.');
  }

  Future<String?> getMusicDirectory() {
    throw UnimplementedError('getMusicDirectory() has not been implemented.');
  }

  Future<String?> getAlarmsDirectory() {
    throw UnimplementedError('getAlarmsDirectory() has not been implemented.');
  }

  Future<String?> getNotificationsDirectory() {
    throw UnimplementedError(
        'getNotificationsDirectory() has not been implemented.');
  }

  Future<String?> getPicturesDirectory() {
    throw UnimplementedError(
        'getPicturesDirectory() has not been implemented.');
  }

  Future<String?> getDCIMDirectory() {
    throw UnimplementedError('getDCIMDirectory() has not been implemented.');
  }

  Future<String?> getMoviesDirectory() {
    throw UnimplementedError('getMoviesDirectory() has not been implemented.');
  }

  Future<String?> getRingtonesDirectory() {
    throw UnimplementedError(
        'getRingtonesDirectory() has not been implemented.');
  }

  Future<String?> getPodcastsDirectory() {
    throw UnimplementedError(
        'getPodcastsDirectory() has not been implemented.');
  }

  Future<String?> getDownloadsDirectory() {
    throw UnimplementedError(
        'getDownloadsDirectory() has not been implemented.');
  }

  Future<String?> getDocumentsDirectory() {
    throw UnimplementedError(
        'getDocumentsDirectory() has not been implemented.');
  }
}
