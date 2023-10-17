import 'package:flutter/material.dart';

extension DoubleExtension on double? {
  double get orZero => this ?? 0;
}

extension DoubleExtensionNonNullable on double {
  BorderRadius get circularAll => BorderRadius.circular(this);
  BorderRadius get circularTop => BorderRadius.vertical(top: Radius.circular(this));
  BorderRadius get circularBottom => BorderRadius.vertical(bottom: Radius.circular(this));
  BorderRadius get circularLeft => BorderRadius.horizontal(left: Radius.circular(this));
  BorderRadius get circularRight => BorderRadius.horizontal(right: Radius.circular(this));
  BorderRadius get circularTopLeft => BorderRadius.only(topLeft: Radius.circular(this));
  BorderRadius get circularTopRight => BorderRadius.only(topRight: Radius.circular(this));
  BorderRadius get circularBottomLeft => BorderRadius.only(bottomLeft: Radius.circular(this));
  BorderRadius get circularBottomRight => BorderRadius.only(bottomRight: Radius.circular(this));
  BorderRadius scircularOnly({Radius? topLeft, Radius? topRight, Radius? bottomLeft, Radius? bottomRight}) => BorderRadius.only(
        topLeft: topLeft ?? Radius.zero,
        topRight: topRight ?? Radius.zero,
        bottomLeft: bottomLeft ?? Radius.zero,
        bottomRight: bottomRight ?? Radius.zero,
      );
}
