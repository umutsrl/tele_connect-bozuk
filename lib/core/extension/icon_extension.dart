import 'package:flutter/material.dart';

extension IconExtension on IconData {
  Icon icon({
    Key? key,
    double? size,
    double? fill,
    double? weight,
    double? grade,
    double? opticalSize,
    Color? color,
    List<Shadow>? shadows,
    String? semanticLabel,
    TextDirection? textDirection,
  }) =>
      Icon(this,
          key: key,
          size: size,
          color: color,
          semanticLabel: semanticLabel,
          textDirection: textDirection,
          shadows: shadows,
          opticalSize: opticalSize,
          grade: grade,
          weight: weight,
          fill: fill);
}
