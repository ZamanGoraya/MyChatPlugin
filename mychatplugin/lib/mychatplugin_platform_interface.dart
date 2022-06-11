import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mychatplugin_method_channel.dart';

abstract class MychatpluginPlatform extends PlatformInterface {
  /// Constructs a MychatpluginPlatform.
  MychatpluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static MychatpluginPlatform _instance = MethodChannelMychatplugin();

  /// The default instance of [MychatpluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelMychatplugin].
  static MychatpluginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MychatpluginPlatform] when
  /// they register themselves.
  static set instance(MychatpluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
