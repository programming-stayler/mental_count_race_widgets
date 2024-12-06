import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

export 'animated_widget.dart';
export 'bg_wrapper.dart';
export 'buttons.dart';
export 'container.dart';
export 'dynamic_avatar.dart';
export 'padding.dart';
export 'shadow_wrapper.dart';
export 'text/text.dart';
export 'transition_route.dart';

class LeftPositioned extends Positioned {
  const LeftPositioned({
    super.key,
    super.width,
    double left = 0,
    required super.child,
  }) : super(
          top: 0,
          left: left,
          bottom: 0,
        );
}

class RightPositioned extends Positioned {
  const RightPositioned({
    super.key,
    super.width,
    double right = 0,
    required super.child,
  }) : super(
          top: 0,
          right: right,
          bottom: 0,
        );
}

class TopPositioned extends Positioned {
  const TopPositioned({
    super.key,
    super.height,
    required super.child,
  }) : super(
          top: 0,
          left: 0,
          right: 0,
        );
}

class BottomPositioned extends Positioned {
  const BottomPositioned({
    super.key,
    super.height,
    required super.child,
  }) : super(
          left: 0,
          right: 0,
          bottom: 0,
        );
}

ShapeBorder buildAppShapeBorder(BuildContext context) {
  final style = AppGlobalStyle.of(context).style;
  final border = style.appSheetStyle.border?.border;
  final radius = style.appSheetStyle.borderRadius?.borderRadius;
  final bgColor = style.appSheetStyle.colorHex?.color ?? Colors.white;
  return RoundedRectangleBorder(
    side: BorderSide(
      width: border?.bottom.width ?? 0,
      color: bgColor,
    ),
    borderRadius: radius ?? BorderRadius.zero,
  );
}