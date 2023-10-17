import 'object_extension.dart';
import 'string_extension.dart';
import 'widget_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  //! Screen size extension
  double get w => MediaQuery.of(this).size.width;
  double get h => MediaQuery.of(this).size.height;

  double dynamicWidth(double val) => w * val;
  double dynamicHeight(double val) => h * val;

  double get halfW => dynamicWidth(0.5);
  double get halfH => dynamicHeight(0.5);
  double get quarterW => dynamicWidth(0.25);
  double get quarterH => dynamicHeight(0.25);
  double get thirdW => dynamicWidth(0.33);
  double get thirdH => dynamicHeight(0.33);

  //! Theme extension
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  //! Navigation extension
  void push(Widget page) {
    Navigator.push(
      this,
      CupertinoPageRoute(
        builder: (context) => page,
      ), // burada CupertinoPageRoute dememin sebebi ios tarzında animasyon olması için
    );
  }

  void pop<T extends Object?>([T? result]) {
    return Navigator.of(this).pop(result);
  }

  pushAndRemoveUntil(Widget page) {
    Navigator.pushAndRemoveUntil(
      this,
      CupertinoPageRoute(
        builder: (context) => page,
      ),
      (route) => false,
    );
  }

  //! Layout Extension
  Widget get layout {
    return LayoutBuilder(builder: (context, boxConstraints) {
      if (boxConstraints.maxWidth < 600) {
        return "Mobile".titleLarge().center;
      } else {
        return "Tablet".titleLarge().center;
      }
    });
  }

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get width => mediaQuery.size.width;

  bool get isMobile => width < 600;
  bool get isNotMobile => !isMobile;
  bool get isTablet => width >= 600 && width < 1200;
  bool get isNotTablet => !isTablet;
  bool get isWeb => !isMobile && !isTablet;
  bool get isNotWeb => !isWeb;

  DeviceType get deviceType {
    if (isMobile) {
      return DeviceType.mobile;
    } else if (isTablet) {
      return DeviceType.tablet;
    } else {
      return DeviceType.web;
    }
  }
}
