import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_x_storage_platform_interface.dart';

/// An implementation of [AndroidXStoragePlatform] that uses method channels.
class MethodChannelAndroidXStorage extends AndroidXStoragePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('android_x_storage');

  @override
  Future<int?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<int?>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getExternalStorageDirectory() async {
    final path = await methodChannel
        .invokeMethod<String?>('getExternalStorageDirectory');
    return path;
  }

  @override
  Future<String?> getSDCardStorageDirectory() async {
    final path =
        await methodChannel.invokeMethod<String?>('getSDCardStorageDirectory');
    return path;
  }

  @override
  Future<List<String>?> getUSBStorageDirectories() async {
    final paths = await methodChannel
        .invokeMethod<List<String>?>('getUSBStorageDirectories');
    return paths;
  }

  @override
  Future<String?> getMusicDirectory() async {
    final path = await methodChannel.invokeMethod<String?>('getMusicDirectory');
    return path;
  }

  @override
  Future<String?> getAlarmsDirectory() async {
    final path =
        await methodChannel.invokeMethod<String?>('getAlarmsDirectory');
    return path;
  }

  @override
  Future<String?> getNotificationsDirectory() async {
    final path =
        await methodChannel.invokeMethod<String?>('getNotificationsDirectory');
    return path;
  }

  @override
  Future<String?> getPicturesDirectory() async {
    final path =
        await methodChannel.invokeMethod<String?>('getPicturesDirectory');
    return path;
  }

  @override
  Future<String?> getDCIMDirectory() async {
    final path = await methodChannel.invokeMethod<String?>('getDCIMDirectory');
    return path;
  }

  @override
  Future<String?> getMoviesDirectory() async {
    final path =
        await methodChannel.invokeMethod<String?>('getMoviesDirectory');
    return path;
  }

  @override
  Future<String?> getRingtonesDirectory() async {
    final path =
        await methodChannel.invokeMethod<String?>('getRingtonesDirectory');
    return path;
  }

  @override
  Future<String?> getPodcastsDirectory() async {
    final path =
        await methodChannel.invokeMethod<String?>('getPodcastsDirectory');
    return path;
  }

  @override
  Future<String?> getDownloadsDirectory() async {
    final path =
        await methodChannel.invokeMethod<String?>('getDownloadsDirectory');
    return path;
  }

  @override
  Future<String?> getDocumentsDirectory() async {
    final path =
        await methodChannel.invokeMethod<String?>('getDocumentsDirectory');
    return path;
  }
}
