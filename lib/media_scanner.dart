import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class MediaScanner {
  static const MethodChannel _channel = MethodChannel('media_scanner');

  /// Path : Path of Image/Video
  static Future<String?> loadMedia({String? path}) async {
    if (Platform.isAndroid) {
      await _channel.invokeMethod('refreshGallery', {"path": path});
    }
    return null;
  }
}
