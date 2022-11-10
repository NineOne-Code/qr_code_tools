import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class QrCodeToolsPlugin {
  static const MethodChannel _channel = const MethodChannel('qr_code_tools');

  /// [filePath] is local file path
  static Future<String?> decodeFrom(String? filePath) async {
    try {
      final String? data =
          await _channel.invokeMethod('decoder', {'file': filePath});
      return data;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
