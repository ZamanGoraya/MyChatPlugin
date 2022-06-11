import 'package:flutter_test/flutter_test.dart';
import 'package:mychatplugin/mychatplugin.dart';
import 'package:mychatplugin/mychatplugin_platform_interface.dart';
import 'package:mychatplugin/mychatplugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMychatpluginPlatform 
    with MockPlatformInterfaceMixin
    implements MychatpluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MychatpluginPlatform initialPlatform = MychatpluginPlatform.instance;

  test('$MethodChannelMychatplugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMychatplugin>());
  });

  test('getPlatformVersion', () async {
    Mychatplugin mychatpluginPlugin = Mychatplugin();
    MockMychatpluginPlatform fakePlatform = MockMychatpluginPlatform();
    MychatpluginPlatform.instance = fakePlatform;
  
    expect(await mychatpluginPlugin.getPlatformVersion(), '42');
  });
}
