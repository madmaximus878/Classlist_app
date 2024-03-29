import 'dart:async';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class ImageCropper {
  static const MethodChannel _channel =
      const MethodChannel('plugins.hunghd.vn/image_cropper');
  static Future<File> cropImage({
    @required String sourcePath,
    double ratioX,
    double ratioY,
    int maxWidth,
    int maxHeight,
    bool circleShape: false,
    // customization for Android
    String toolbarTitle,
    Color toolbarColor,
    Color statusBarColor,
    Color toolbarWidgetColor,
  }) async {
    assert(sourcePath != null);

    if (maxWidth != null && maxWidth < 0) {
      throw new ArgumentError.value(maxWidth, 'maxWidth cannot be negative');
    }

    if (maxHeight != null && maxHeight < 0) {
      throw new ArgumentError.value(maxHeight, 'maxHeight cannot be negative');
    }

    final String resultPath =
        await _channel.invokeMethod('cropImage', <String, dynamic>{
      'source_path': sourcePath,
      'max_width': maxWidth,
      'max_height': maxHeight,
      'ratio_x': ratioX,
      'ratio_y': ratioY,
      'circle_shape': circleShape,
      'toolbar_title': toolbarTitle,
      'toolbar_color': toolbarColor?.value,
      'statusbar_color': statusBarColor?.value,
      'toolbar_widget_color': toolbarWidgetColor?.value,
    });
    return resultPath == null ? null : new File(resultPath);
  }
}
