import 'package:flutter_mobx/flutter_mobx.dart';

import 'double_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  //! Size constants
  double get xxxSmall => 1;
  double get xxSmall => 2;
  double get xSmall => 4;
  double get small => 8;
  double get medium => 16;
  double get large => 24;
  double get xLarge => 32;
  double get xxLarge => 40;
  double get xxxLarge => 48;
  double get giant => 64;

  //! Alignment Widgets
  Center get center => Center(child: this);
  Padding paddingAll(double padding) => Padding(padding: EdgeInsets.all(padding), child: this);

  //! Expand And Flex Extensions
  Expanded get expand => Expanded(child: this);

  //! Test Widget Size And Position With Color
  Container get testRed => Container(color: Colors.red, child: this);
  Container get testGreen => Container(color: Colors.green, child: this);
  Container get testBlue => Container(color: Colors.blue, child: this);
  Container get testYellow => Container(color: Colors.yellow, child: this);
  Container get testPurple => Container(color: Colors.purple, child: this);
  Container get testPink => Container(color: Colors.pink, child: this);
  Container get testOrange => Container(color: Colors.orange, child: this);
  Container get testTeal => Container(color: Colors.teal, child: this);
  Container get testCyan => Container(color: Colors.cyan, child: this);
  Container get testBrown => Container(color: Colors.brown, child: this);
  Container get testGrey => Container(color: Colors.grey, child: this);
  Container get testBlueGrey => Container(color: Colors.blueGrey, child: this);
  Container get testBlack => Container(color: Colors.black, child: this);
  Container get testWhite => Container(color: Colors.white, child: this);

  //! Padding extension
  Padding paddingOnly({
    double? left,
    double? right,
    double? top,
    double? bottom,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          left: left.orZero,
          right: right.orZero,
          top: top.orZero,
          bottom: bottom.orZero,
        ),
        child: this,
      );

  Padding get paddingAllxxxSmall => Padding(padding: EdgeInsets.all(xxxSmall), child: this);
  Padding get paddingAllxxSmall => Padding(padding: EdgeInsets.all(xxSmall), child: this);
  Padding get paddingAllxSmall => Padding(padding: EdgeInsets.all(xSmall), child: this);
  Padding get paddingAllSmall => Padding(padding: EdgeInsets.all(small), child: this);
  Padding get paddingAllMedium => Padding(padding: EdgeInsets.all(medium), child: this);
  Padding get paddingAllLarge => Padding(padding: EdgeInsets.all(large), child: this);
  Padding get paddingAllxLarge => Padding(padding: EdgeInsets.all(xLarge), child: this);
  Padding get paddingAllxxLarge => Padding(padding: EdgeInsets.all(xxLarge), child: this);
  Padding get paddingAllxxxLarge => Padding(padding: EdgeInsets.all(xxxLarge), child: this);
  Padding get paddingAllGiant => Padding(padding: EdgeInsets.all(giant), child: this);

  Padding get paddingLeftxxxSmall => Padding(padding: EdgeInsets.only(left: xxxSmall), child: this);
  Padding get paddingLeftxxSmall => Padding(padding: EdgeInsets.only(left: xxSmall), child: this);
  Padding get paddingLeftxSmall => Padding(padding: EdgeInsets.only(left: xSmall), child: this);
  Padding get paddingLeftSmall => Padding(padding: EdgeInsets.only(left: small), child: this);
  Padding get paddingLeftMedium => Padding(padding: EdgeInsets.only(left: medium), child: this);
  Padding get paddingLeftLarge => Padding(padding: EdgeInsets.only(left: large), child: this);
  Padding get paddingLeftxLarge => Padding(padding: EdgeInsets.only(left: xLarge), child: this);
  Padding get paddingLeftxxLarge => Padding(padding: EdgeInsets.only(left: xxLarge), child: this);
  Padding get paddingLeftxxxLarge => Padding(padding: EdgeInsets.only(left: xxxLarge), child: this);
  Padding get paddingLeftGiant => Padding(padding: EdgeInsets.only(left: giant), child: this);

  Padding get paddingRightxxxSmall => Padding(padding: EdgeInsets.only(right: xxxSmall), child: this);
  Padding get paddingRightxxSmall => Padding(padding: EdgeInsets.only(right: xxSmall), child: this);
  Padding get paddingRightxSmall => Padding(padding: EdgeInsets.only(right: xSmall), child: this);
  Padding get paddingRightSmall => Padding(padding: EdgeInsets.only(right: small), child: this);
  Padding get paddingRightMedium => Padding(padding: EdgeInsets.only(right: medium), child: this);
  Padding get paddingRightLarge => Padding(padding: EdgeInsets.only(right: large), child: this);
  Padding get paddingRightxLarge => Padding(padding: EdgeInsets.only(right: xLarge), child: this);
  Padding get paddingRightxxLarge => Padding(padding: EdgeInsets.only(right: xxLarge), child: this);
  Padding get paddingRightxxxLarge => Padding(padding: EdgeInsets.only(right: xxxLarge), child: this);
  Padding get paddingRightGiant => Padding(padding: EdgeInsets.only(right: giant), child: this);

  //! Size extension
  SizedBox withWidth(double width) => SizedBox(width: width, child: this);
  SizedBox withHeight(double height) => SizedBox(height: height, child: this);

  //! Animation
  AnimatedContainer animatedContainer({
    Key? key,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Widget? child,
    Clip clipBehavior = Clip.none,
    Curve curve = Curves.linear,
    required Duration duration,
    void Function()? onEnd,
  }) =>
      AnimatedContainer(
        key: key,
        alignment: alignment,
        padding: padding,
        color: color,
        decoration: decoration,
        foregroundDecoration: foregroundDecoration,
        width: width,
        height: height,
        constraints: constraints,
        margin: margin,
        transform: transform,
        transformAlignment: transformAlignment,
        clipBehavior: clipBehavior,
        curve: curve,
        duration: duration,
        onEnd: onEnd,
        child: child,
      );

  GestureDetector gestureDetector({
    Key? key,
    void Function(TapDownDetails)? onTapDown,
    void Function(TapUpDetails)? onTapUp,
    void Function()? onTap,
    void Function()? onTapCancel,
    void Function()? onSecondaryTap,
    void Function(TapDownDetails)? onSecondaryTapDown,
    void Function(TapUpDetails)? onSecondaryTapUp,
    void Function()? onSecondaryTapCancel,
    void Function(TapDownDetails)? onTertiaryTapDown,
    void Function(TapUpDetails)? onTertiaryTapUp,
    void Function()? onTertiaryTapCancel,
    void Function(TapDownDetails)? onDoubleTapDown,
    void Function()? onDoubleTap,
    void Function()? onDoubleTapCancel,
    void Function(LongPressDownDetails)? onLongPressDown,
    void Function()? onLongPressCancel,
    void Function()? onLongPress,
    void Function(LongPressStartDetails)? onLongPressStart,
    void Function(LongPressMoveUpdateDetails)? onLongPressMoveUpdate,
    void Function()? onLongPressUp,
    void Function(LongPressEndDetails)? onLongPressEnd,
    void Function(LongPressDownDetails)? onSecondaryLongPressDown,
    void Function()? onSecondaryLongPressCancel,
    void Function()? onSecondaryLongPress,
    void Function(LongPressStartDetails)? onSecondaryLongPressStart,
    void Function(LongPressMoveUpdateDetails)? onSecondaryLongPressMoveUpdate,
    void Function()? onSecondaryLongPressUp,
    void Function(LongPressEndDetails)? onSecondaryLongPressEnd,
    void Function(LongPressDownDetails)? onTertiaryLongPressDown,
    void Function()? onTertiaryLongPressCancel,
    void Function()? onTertiaryLongPress,
    void Function(LongPressStartDetails)? onTertiaryLongPressStart,
    void Function(LongPressMoveUpdateDetails)? onTertiaryLongPressMoveUpdate,
    void Function()? onTertiaryLongPressUp,
    void Function(LongPressEndDetails)? onTertiaryLongPressEnd,
    void Function(DragDownDetails)? onVerticalDragDown,
    void Function(DragStartDetails)? onVerticalDragStart,
    void Function(DragUpdateDetails)? onVerticalDragUpdate,
    void Function(DragEndDetails)? onVerticalDragEnd,
    void Function()? onVerticalDragCancel,
    void Function(DragDownDetails)? onHorizontalDragDown,
    void Function(DragStartDetails)? onHorizontalDragStart,
    void Function(DragUpdateDetails)? onHorizontalDragUpdate,
    void Function(DragEndDetails)? onHorizontalDragEnd,
    void Function()? onHorizontalDragCancel,
    void Function(ForcePressDetails)? onForcePressStart,
    void Function(ForcePressDetails)? onForcePressPeak,
    void Function(ForcePressDetails)? onForcePressUpdate,
    void Function(ForcePressDetails)? onForcePressEnd,
    void Function(DragDownDetails)? onPanDown,
    void Function(DragStartDetails)? onPanStart,
    void Function(DragUpdateDetails)? onPanUpdate,
    void Function(DragEndDetails)? onPanEnd,
    void Function()? onPanCancel,
    void Function(ScaleStartDetails)? onScaleStart,
    void Function(ScaleUpdateDetails)? onScaleUpdate,
    void Function(ScaleEndDetails)? onScaleEnd,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) =>
      GestureDetector(
        key: key,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onTap: onTap,
        onTapCancel: onTapCancel,
        onSecondaryTap: onSecondaryTap,
        onSecondaryTapDown: onSecondaryTapDown,
        onSecondaryTapUp: onSecondaryTapUp,
        onSecondaryTapCancel: onSecondaryTapCancel,
        onTertiaryTapDown: onTertiaryTapDown,
        onTertiaryTapUp: onTertiaryTapUp,
        onTertiaryTapCancel: onTertiaryTapCancel,
        onDoubleTapDown: onDoubleTapDown,
        onDoubleTap: onDoubleTap,
        onDoubleTapCancel: onDoubleTapCancel,
        onLongPressDown: onLongPressDown,
        onLongPressCancel: onLongPressCancel,
        onLongPress: onLongPress,
        onLongPressStart: onLongPressStart,
        onLongPressMoveUpdate: onLongPressMoveUpdate,
        onLongPressUp: onLongPressUp,
        onLongPressEnd: onLongPressEnd,
        onSecondaryLongPressDown: onSecondaryLongPressDown,
        onSecondaryLongPressCancel: onSecondaryLongPressCancel,
        onSecondaryLongPress: onSecondaryLongPress,
        onSecondaryLongPressStart: onSecondaryLongPressStart,
        onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate,
        onSecondaryLongPressUp: onSecondaryLongPressUp,
        onSecondaryLongPressEnd: onSecondaryLongPressEnd,
        onTertiaryLongPressDown: onTertiaryLongPressDown,
        onTertiaryLongPressCancel: onTertiaryLongPressCancel,
        onTertiaryLongPress: onTertiaryLongPress,
        onTertiaryLongPressStart: onTertiaryLongPressStart,
        onTertiaryLongPressMoveUpdate: onTertiaryLongPressMoveUpdate,
        onTertiaryLongPressUp: onTertiaryLongPressUp,
        onTertiaryLongPressEnd: onTertiaryLongPressEnd,
        onVerticalDragDown: onVerticalDragDown,
        onVerticalDragStart: onVerticalDragStart,
        onVerticalDragUpdate: onVerticalDragUpdate,
        onVerticalDragEnd: onVerticalDragEnd,
        onVerticalDragCancel: onVerticalDragCancel,
        onHorizontalDragDown: onHorizontalDragDown,
        onHorizontalDragStart: onHorizontalDragStart,
        onHorizontalDragUpdate: onHorizontalDragUpdate,
        onHorizontalDragEnd: onHorizontalDragEnd,
        onHorizontalDragCancel: onHorizontalDragCancel,
        onForcePressStart: onForcePressStart,
        onForcePressPeak: onForcePressPeak,
        onForcePressUpdate: onForcePressUpdate,
        onForcePressEnd: onForcePressEnd,
        onPanDown: onPanDown,
        onPanStart: onPanStart,
        onPanUpdate: onPanUpdate,
        onPanEnd: onPanEnd,
        onPanCancel: onPanCancel,
        onScaleStart: onScaleStart,
        onScaleUpdate: onScaleUpdate,
        onScaleEnd: onScaleEnd,
        behavior: behavior,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        trackpadScrollCausesScale: trackpadScrollCausesScale,
        trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
        supportedDevices: supportedDevices,
        child: this,
      );

  InkWell onTap(VoidCallback onTap) => InkWell(onTap: onTap, child: this);

  InkWell inkWell({
    Key? key,
    void Function()? onTap,
    void Function()? onDoubleTap,
    void Function()? onLongPress,
    void Function(TapDownDetails)? onTapDown,
    void Function(TapUpDetails)? onTapUp,
    void Function()? onTapCancel,
    void Function()? onSecondaryTap,
    void Function(TapUpDetails)? onSecondaryTapUp,
    void Function(TapDownDetails)? onSecondaryTapDown,
    void Function()? onSecondaryTapCancel,
    void Function(bool)? onHighlightChanged,
    void Function(bool)? onHover,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    MaterialStateProperty<Color?>? overlayColor,
    Color? splashColor,
    InteractiveInkFeatureFactory? splashFactory,
    double? radius,
    BorderRadius? borderRadius,
    ShapeBorder? customBorder,
    bool? enableFeedback = true,
    bool excludeFromSemantics = false,
    FocusNode? focusNode,
    bool canRequestFocus = true,
    void Function(bool)? onFocusChange,
    bool autofocus = false,
    MaterialStatesController? statesController,
  }) =>
      InkWell(
        key: key,
        onTap: onTap,
        onDoubleTap: onDoubleTap,
        onLongPress: onLongPress,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onTapCancel: onTapCancel,
        onSecondaryTap: onSecondaryTap,
        onSecondaryTapUp: onSecondaryTapUp,
        onSecondaryTapDown: onSecondaryTapDown,
        onSecondaryTapCancel: onSecondaryTapCancel,
        onHighlightChanged: onHighlightChanged,
        onHover: onHover,
        mouseCursor: mouseCursor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        overlayColor: overlayColor,
        splashColor: splashColor,
        splashFactory: splashFactory,
        radius: radius,
        borderRadius: borderRadius,
        customBorder: customBorder,
        enableFeedback: enableFeedback,
        excludeFromSemantics: excludeFromSemantics,
        focusNode: focusNode,
        canRequestFocus: canRequestFocus,
        onFocusChange: onFocusChange,
        autofocus: autofocus,
        statesController: statesController,
        child: this,
      );

  Observer observer() => Observer(builder: (context) => this);
}
