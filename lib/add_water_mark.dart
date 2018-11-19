import 'dart:async';

import 'package:flutter/services.dart';

class AddWaterMark {
  static const MethodChannel _channel =
      const MethodChannel('add_water_mark');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
