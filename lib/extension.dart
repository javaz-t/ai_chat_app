import 'package:flutter/material.dart';

extension SizeBoxExtension on int {
  SizedBox vs() {
    return SizedBox(height: toDouble());
  }

  SizedBox hs() {
    return SizedBox(width: toDouble());
  }
}
