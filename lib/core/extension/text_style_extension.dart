import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle? {
  TextStyle get orEmpty => this ?? TextStyle();
}
