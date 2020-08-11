import 'dart:async';

import 'package:flutter/services.dart';

class Bazplugin {
  static const MethodChannel _channel =
      const MethodChannel('bazplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<Null>  showToast(String msg) async {
    await _channel.invokeMethod('ShowToastPlugin');
    return null;
  }
}
