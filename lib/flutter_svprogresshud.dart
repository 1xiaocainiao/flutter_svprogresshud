import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterSvprogresshud {
  static const MethodChannel _channel =
      const MethodChannel('flutter_svprogresshud');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static void show({
    String status,
  }) {
    Map<String, dynamic> arguments = {"status": status};
    _channel.invokeMethod("show", arguments);
  }

  static void dismiss({Duration delay, VoidCallback completion}) {
    Map<String, dynamic> arguments = {};
    if (delay != null) {
      arguments = {"delay": delay.inMilliseconds};
    }
    _channel.invokeMethod("dismiss", arguments).then((_) {
      if (completion != null) {
        completion();
      }
    });
  }
}
