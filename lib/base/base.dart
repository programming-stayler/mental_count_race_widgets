import 'package:flutter/material.dart';

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