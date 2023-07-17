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
    final version = await methodChannel.invokeMethod<int>('getPlatformVersion');
    return version;
  }
}
