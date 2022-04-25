import 'dart:async';

import 'package:flutter/services.dart';

class FlutterCore {
  static const MethodChannel _channel = const MethodChannel('flutter_core_null_safety_2');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
