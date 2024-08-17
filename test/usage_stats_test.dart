import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:usage_stats_new/usage_stats.dart';
void main() {
  const MethodChannel channel = MethodChannel('usage_stats');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, (MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
