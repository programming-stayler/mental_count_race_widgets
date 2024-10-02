import 'dart:math';

import 'package:flutter/material.dart';

class AppAnimatedWidget extends StatefulWidget {
  final bool animateFromLastPercent;
  final bool addAutomaticKeepAlive;
  final bool restartAnimation;
  final bool repeatOnReload;
  final bool normalize;

  final int animationDuration;
  final int animationDelay;
  final double value;

  final Curve curve;

  const AppAnimatedWidget({
    super.key,
    this.animateFromLastPercent = false,
    this.addAutomaticKeepAlive = true,
    this.restartAnimation = false,
    this.animationDuration = 900,
    this.repeatOnReload = false,
    this.curve = Curves.ease,
    this.normalize = false,
    this.value = 0.0,
    this.animationDelay = 250,
  });

  @override
  AppAnimatedState createState() => AppAnimatedState();
}

class AppAnimatedState<T extends AppAnimatedWidget> extends State<T>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  AnimationController? _animationController;
  late Animation<double> _animation;
  double progress = 0.0;

  @override
  void didUpdateWidget(T oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.repeatOnReload || oldWidget.value != widget.value) {
      final begin = widget.animateFromLastPercent ? oldWidget.value : 0.0;
      _runAnimation(begin: begin);
      _animationController?.forward(from: begin);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(milliseconds: widget.animationDelay));
      if (mounted) {
        _animationController = AnimationController(vsync: this);
        _runAnimation().addListener(() {
          if (mounted) {
            setState(() => progress = _animation.value);
          }
          if (widget.restartAnimation && progress == 1.0) {
            _animationController?.repeat(min: 0, max: 1.0);
          }
        });
        _animationController?.forward();
      }
    });
  }

  Animation<double> _runAnimation({double begin = 0.0}) {
    _animationController?.duration =
        Duration(milliseconds: widget.animationDuration);
    _animationController?.reset();
    if (begin == 0) {
      progress = 0;
    }
    return _animation = Tween(
      begin: begin,
      end: widget.normalize ? min(widget.value, 1.0) : widget.value,
    ).animate(
      CurvedAnimation(
        parent: _animationController!,
        curve: widget.curve,
      ),
    );
  }

  @override
  bool get wantKeepAlive => widget.addAutomaticKeepAlive;

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
