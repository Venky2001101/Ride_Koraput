import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  bool get isKeyboardOpened => MediaQuery.of(this).viewInsets.bottom > 0;

  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
}
