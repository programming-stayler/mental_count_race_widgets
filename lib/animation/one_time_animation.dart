import 'dart:async';

import 'package:flutter/material.dart';

typedef AnimationBuilder = Widget Function(
    BuildContext context,
    AnimationController? animationController,
    );

class FadeInAnimation extends StatelessWidget {
  final Duration? duration;
  final Duration? delay;
  final Curve curve;
  final Widget child;
  final int? position;

  const FadeInAnimation({
    super.key,
    this.duration,
    this.delay,
    this.position,
    this.curve = Curves.ease,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationConfigurator(
      duration: duration,
      delay: delay,
      position: position,
      animatedChildBuilder: _fadeInAnimation,
    );
  }

  Widget _fadeInAnimation(Animation<double> animation) {
    final opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animation,
        curve: Interval(0.0, 1.0, curve: curve),
      ),
    );

    return Opacity(
      opacity: opacityAnimation.value,
      child: child,
    );
  }
}

class SlideAnimation extends StatelessWidget {
  final Duration? duration;
  final Duration? delay;
  final Curve curve;
  final double verticalOffset;
  final double horizontalOffset;
  final Widget child;
  final int? position;

  const SlideAnimation({
    super.key,
    this.duration,
    this.delay,
    this.position,
    this.curve = Curves.ease,
    double? verticalOffset,
    double? horizontalOffset,
    required this.child,
  })  : verticalOffset = (verticalOffset == null && horizontalOffset == null)
      ? 50.0
      : (verticalOffset ?? 0.0),
        horizontalOffset = horizontalOffset ?? 0.0;

  @override
  Widget build(BuildContext context) {
    return AnimationConfigurator(
      duration: duration,
      delay: delay,
      position: position,
      animatedChildBuilder: _slideAnimation,
    );
  }

  Widget _slideAnimation(Animation<double> animation) {
    Animation<double> offsetAnimation(
        double offset,
        Animation<double> animation,
        ) {
      return Tween<double>(begin: offset, end: 0.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: Interval(0.0, 1.0, curve: curve),
        ),
      );
    }

    return Transform.translate(
      offset: Offset(
        horizontalOffset == 0.0
            ? 0.0
            : offsetAnimation(horizontalOffset, animation).value,
        verticalOffset == 0.0
            ? 0.0
            : offsetAnimation(verticalOffset, animation).value,
      ),
      child: child,
    );
  }
}

class AnimationConfigurator extends StatelessWidget {
  final Duration? duration;
  final Duration? delay;
  final int? position;
  final Widget Function(Animation<double>) animatedChildBuilder;

  const AnimationConfigurator({
    super.key,
    this.duration,
    this.delay,
    this.position,
    required this.animatedChildBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final animationConfiguration = AnimationConfiguration.of(context);

    if (animationConfiguration == null) {
      throw FlutterError.fromParts([]);
    }

    final resultPosition = animationConfiguration.position;
    final resultDuration = duration ?? animationConfiguration.duration;
    final resultDelay = delay ?? animationConfiguration.delay;

    return AnimationExecutor(
      position: position,
      duration: resultDuration,
      delay: stagger(resultPosition, resultDuration, resultDelay),
      builder: (context, animationController) =>
          animatedChildBuilder(animationController!),
    );
  }

  Duration stagger(int position, Duration duration, Duration? delay) {
    final delayInMilliseconds =
    delay == null ? duration.inMilliseconds ~/ 6 : delay.inMilliseconds;

    return Duration(milliseconds: position * delayInMilliseconds);
  }
}

class AnimationConfiguration extends InheritedWidget {
  final int position;
  final Duration duration;
  final Duration? delay;

  const AnimationConfiguration.synchronized({
    super.key,
    this.duration = const Duration(milliseconds: 225),
    required super.child,
  })  : position = 0,
        delay = Duration.zero;

  const AnimationConfiguration.staggeredList({
    super.key,
    required this.position,
    this.duration = const Duration(milliseconds: 225),
    this.delay,
    required super.child,
  });

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }

  static List<Widget> toStaggeredList({
    Duration? duration,
    Duration? delay,
    required Widget Function(Widget) childAnimationBuilder,
    required List<Widget> children,
  }) =>
      children
          .asMap()
          .map((index, widget) {
        return MapEntry(
          index,
          AnimationConfiguration.staggeredList(
            position: index,
            duration: duration ?? const Duration(milliseconds: 225),
            delay: delay,
            child: childAnimationBuilder(widget),
          ),
        );
      })
          .values
          .toList();

  static AnimationConfiguration? of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<AnimationConfiguration>();
  }
}

class AnimationExecutor extends StatefulWidget {
  final Duration duration;
  final Duration delay;
  final AnimationBuilder builder;
  final int? position;

  const AnimationExecutor({
    super.key,
    required this.duration,
    this.delay = Duration.zero,
    required this.builder,
    this.position,
  });

  @override
  AnimationExecutorState createState() => AnimationExecutorState();
}

class AnimationExecutorState extends State<AnimationExecutor>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: widget.duration, vsync: this);
    final runAnimation = AnimationLimiter.shouldRunAnimation(
      context,
      position: widget.position,
    ) ??
        true;
    if (runAnimation) {
      _timer = Timer(widget.delay, _animationController.forward);
    } else {
      _animationController.value = 1.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: _animationController,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return widget.builder(context, _animationController);
  }
}

class AnimationLimiter extends StatefulWidget {
  final Widget child;
  final int? limitPosition;

  const AnimationLimiter({
    super.key,
    required this.child,
    this.limitPosition,
  });

  @override
  AnimationLimiterState createState() => AnimationLimiterState();

  static bool? shouldRunAnimation(BuildContext context, {int? position}) {
    final provider = _AnimationLimiterProvider.of(context);
    if (provider == null) {
      return null;
    }
    final limitPosition = provider.limitPosition;
    if (position != null && limitPosition != null) {
      return position >= limitPosition;
    }
    return provider.shouldRunAnimation;
  }
}

class AnimationLimiterState extends State<AnimationLimiter> {
  bool shouldRunAnimation = true;
  int? limitPosition = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((value) {
      if (!mounted) return;
      setState(() {
        shouldRunAnimation = false;
        limitPosition = widget.limitPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _AnimationLimiterProvider(
      shouldRunAnimation: shouldRunAnimation,
      limitPosition: limitPosition,
      child: widget.child,
    );
  }
}

class _AnimationLimiterProvider extends InheritedWidget {
  final bool? shouldRunAnimation;
  final int? limitPosition;

  const _AnimationLimiterProvider({
    this.shouldRunAnimation,
    this.limitPosition,
    required super.child,
  });

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }

  static _AnimationLimiterProvider? of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<_AnimationLimiterProvider>();
  }
}
