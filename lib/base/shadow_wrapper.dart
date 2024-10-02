import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class ShadowWrapper extends StatelessWidget {
  final Widget child;
  final Axis axis;
  final Color color;

  const ShadowWrapper({
    super.key,
    required this.child,
    required this.color,
    this.axis = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final children = <Widget>[child];
        final colors = [
          color,
          color.withOpacity(0.85),
          color.withOpacity(0.7),
          color.withOpacity(0.55),
          color.withOpacity(0.4),
          color.withOpacity(0.3),
          color.withOpacity(0.1),
          color.withOpacity(0.0),
        ];
        switch (axis) {
          case Axis.horizontal:
            children.addAll([
              LeftPositioned(
                width: constraints.maxWidth / 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(16),
                    ),
                    gradient: LinearGradient(
                      colors: colors,
                    ),
                  ),
                ),
              ),
              RightPositioned(
                width: constraints.maxWidth / 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(16),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: colors,
                    ),
                  ),
                ),
              ),
            ]);
            break;
          case Axis.vertical:
            final shadowOffset = 24.toHeight;
            children.addAll([
              TopPositioned(
                height: shadowOffset,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: colors,
                    ),
                  ),
                ),
              ),
              BottomPositioned(
                height: shadowOffset,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: colors,
                    ),
                  ),
                ),
              ),
            ]);
            break;
        }
        return Stack(
          children: children,
        );
      },
    );
  }
}
