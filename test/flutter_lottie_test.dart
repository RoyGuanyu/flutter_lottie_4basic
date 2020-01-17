import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_lottie_4basic/flutter_lottie_4basic.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_lottie_4basic');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await FlutterLottie.platformVersion, '42');
  // });
}
