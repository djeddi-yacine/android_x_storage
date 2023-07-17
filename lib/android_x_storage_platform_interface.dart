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
}
