import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class AppContainer extends Container {
  AppContainer({
    super.key,
    super.child,
    super.padding,
    super.margin,
    super.alignment,
    super.decoration,
    super.clipBehavior,
  });

  factory AppContainer.fromStyle({
    required Widget child,
    ContainerUIStyle? style,
  }) {
    return AppContainer(
      padding: style?.padding?.edgeInsets,
      margin: style?.margin?.edgeInsets,
      alignment: style?.alignment?.alignment,
      decoration: style?.decoration?.boxDecoration,
      clipBehavior: style?.clipBehavior ?? Clip.none,
      child: child,
    );
  }
}
