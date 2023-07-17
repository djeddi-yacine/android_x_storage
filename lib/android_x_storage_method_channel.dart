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
    // Invoke the 'getPlatformVersion' method on the method channel.
    final version =
        await methodChannel.invokeMethod<int?>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getExternalStorageDirectory() async {
    // Invoke the 'getExternalStorageDirectory' method on the method channel.
    final path = await methodChannel
        .invokeMethod<String?>('getExternalStorageDirectory');
    return path;
  }

  @override
  Future<String?> getSDCardStorageDirectory() async {
    // Invoke the 'getSDCardStorageDirectory' method on the method channel.
    final path =
        await methodChannel.invokeMethod<String?>('getSDCardStorageDirectory');
    return path;
  }

  @override
  Future<List<String?>> getUSBStorageDirectories() async {
    // Invoke the 'getUSBStorageDirectories' method on the method channel.
    final List<dynamic>? result =
        await methodChannel.invokeMethod('getUSBStorageDirectories');
    if (result != null) {
      final List<String?> paths = result.cast<String?>();
      return paths;
    }
    return [];
  }

  @override
  Future<String?> getMusicDirectory() async {
    // Invoke the 'getMusicDirectory' method on the method channel.
    final path = await methodChannel.invokeMethod<String?>('getMusicDirectory');
    return path;
  }

  @override
  Future<String?> getAlarmsDirectory() async {
    // Invoke the 'getAlarmsDirectory' method on the method channel.
    final path =
        await methodChannel.invokeMethod<String?>('getAlarmsDirectory');
    return path;
  }

  @override
  Future<String?> getNotificationsDirectory() async {
    // Invoke the 'getNotificationsDirectory' method on the method channel.
    final path =
        await methodChannel.invokeMethod<String?>('getNotificationsDirectory');
    return path;
  }

  @override
  Future<String?> getPicturesDirectory() async {
    // Invoke the 'getPicturesDirectory' method on the method channel.
    final path =
        await methodChannel.invokeMethod<String?>('getPicturesDirectory');
    return path;
  }

  @override
  Future<String?> getDCIMDirectory() async {
    // Invoke the 'getDCIMDirectory' method on the method channel.
    final path = await methodChannel.invokeMethod<String?>('getDCIMDirectory');
    return path;
  }

  @override
  Future<String?> getMoviesDirectory() async {
    // Invoke the 'getMoviesDirectory' method on the method channel.
    final path =
        await methodChannel.invokeMethod<String?>('getMoviesDirectory');
    return path;
  }

  @override
  Future<String?> getRingtonesDirectory() async {
    // Invoke the 'getRingtonesDirectory' method on the method channel.
    final path =
        await methodChannel.invokeMethod<String?>('getRingtonesDirectory');
    return path;
  }

  @override
  Future<String?> getPodcastsDirectory() async {
    // Invoke the 'getPodcastsDirectory' method on the method channel.
    final path =
        await methodChannel.invokeMethod<String?>('getPodcastsDirectory');
    return path;
  }

  @override
  Future<String?> getDownloadsDirectory() async {
    // Invoke the 'getDownloadsDirectory' method on the method channel.
    final path =
        await methodChannel.invokeMethod<String?>('getDownloadsDirectory');
    return path;
  }

  @override
  Future<String?> getDocumentsDirectory() async {
    // Invoke the 'getDocumentsDirectory' method on the method channel.
    final path =
        await methodChannel.invokeMethod<String?>('getDocumentsDirectory');
    return path;
  }
}
