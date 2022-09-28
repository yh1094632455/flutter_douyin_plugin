import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'callback/dy_callback.dart';
import 'dy_method_channel.dart';

abstract class DyPlatform extends PlatformInterface {
  /// Constructs a DyPlatform.
  DyPlatform() : super(token: _token);

  static final Object _token = Object();

  static DyPlatform _instance = MethodChannelDy();

  /// The default instance of [DyPlatform] to use.
  ///
  /// Defaults to [MethodChannelDy].
  static DyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DyPlatform] when
  /// they register themselves.
  static set instance(DyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> initSdk(String clientKey) {
    throw UnimplementedError('initSdk() has not been implemented.');
  }

  Future<String?> loginInWithDouyin() {
    throw UnimplementedError('loginInWithDouyin() has not been implemented.');
  }

  Future<String?> initKey(String clientKey, String clientSecret) {
    throw UnimplementedError('initKey() has not been implemented.');
  }

  void addDyCallbackListener(DyCallBackListener callBackListener) {}
}