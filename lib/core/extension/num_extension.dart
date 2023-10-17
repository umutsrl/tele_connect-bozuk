import 'package:flutter/material.dart';

extension NumExtension on num? {
  num get _orZero => this ?? 0;

  SizedBox get height => SizedBox(height: _orZero.toDouble());

  SizedBox get width => SizedBox(width: _orZero.toDouble());
}
