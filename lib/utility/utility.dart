// ignore_for_file: strict_raw_type, avoid_dynamic_calls

import 'package:flutter/material.dart';

class Utility {
  /// 背景取得
  Widget getBackGround() {
    return Image.asset(
      'assets/images/ai.png',
      fit: BoxFit.fitHeight,
      color: Colors.black.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    );
  }
}
