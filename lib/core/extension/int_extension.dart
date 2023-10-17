import 'package:flutter/material.dart';

extension IntExtension on int {
  Color get toColor {
    String tmp = toString();
    bool hexaControl = tmp.contains("0x");
    if (hexaControl) {
      return _orWhite;
    } else {
      return Colors.white;
    }
  }

  Color get _orWhite => Color(this);
  //! Duration
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  Duration get hours => Duration(hours: this);
  Duration get days => Duration(days: this);
}
