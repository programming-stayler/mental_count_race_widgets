import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class AnimatedColumn<T> extends StatefulWidget {
  final List<Widget> children;
  final double padding;
  final double topOffset;
  final double bottomOffset;
  final Duration? duration;

  const AnimatedColumn({
    super.key,
    required this.children,
    this.padding = 8,
    this.topOffset = 16,
    this.bottomOffset = 16,
    this.duration,
  });

  @override
  State<AnimatedColumn> createState() => _AnimatedColumnState();
}

class _AnimatedColumnState<T> extends State<AnimatedColumn<T>> {
  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      SizedBox(height: widget.topOffset.toHeight),
    ];
    for (var i = 0; i < widget.children.length; i++) {
      if (i > 0) {
        children.add(
          SizedBox(
            height: widget.padding.toHeight,
          ),
        );
      }
      children.add(
        AnimationConfiguration.staggeredList(
          position: i,
          duration: widget.duration ?? 350.milliseconds,
          child: SlideAnimation(
            position: i,
            child: FadeInAnimation(
              position: i,
              child: widget.children[i],
            ),
          ),
        ),
      );
    }
    children.add(
      SizedBox(height: widget.bottomOffset.toHeight),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );
  }
}
