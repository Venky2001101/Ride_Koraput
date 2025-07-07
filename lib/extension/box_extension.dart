import 'package:flutter/material.dart';

extension BoxExtension on num {
  SizedBox get hBox => SizedBox(height: toDouble());
  SizedBox get wBox => SizedBox(width: toDouble());
}
