import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lbm_plugin/lbm_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('lbm_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await LbmPlugin.platformVersion, '42');
  });
}
