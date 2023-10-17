import 'context_extension.dart';
import 'package:flutter/material.dart';

extension OnjectExtension on Object {
  T or<T>(BuildContext context, {T? mobile, T? tablet, T? web}) {
    switch (context.deviceType) {
      case DeviceType.mobile:
        return mobile ?? this as T;
      case DeviceType.tablet:
        return tablet ?? this as T;
      case DeviceType.web:
        return web ?? this as T;
      default:
        return mobile ?? this as T;
    }
  }
}

enum DeviceType { mobile, tablet, web }
