import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

export 'controller.dart';

class ExpressionViewer extends StatefulWidget {
  final ExpressionViewerController controller;

  const ExpressionViewer({
    super.key,
    required this.controller,
  });

  @override
  State<ExpressionViewer> createState() => _ExpressionViewerState();
}

class _ExpressionViewerState extends State<ExpressionViewer> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final currentExpression = widget.controller.currentItem;
        final nextExpression = widget.controller.nextItem;
        final widgetHeight = 100.toHeight;
        final shadowOffset = widgetHeight / 2;
        final items = <Widget>[];
        if (currentExpression != null) {
          items.add(
            ExpressionText(
              model: currentExpression,
              selected: true,
            ),
          );
        }
        if (nextExpression != null) {
          items.add(
            ExpressionText(
              model: nextExpression,
              selected: false,
            ),
          );
        }
        final style = AppGlobalStyle.of(context).style;
        final bgColor = style.screenBGColorHex.color;
        final controller = widget.controller;
        final fraction = controller.currentItem?.map(
              fake: (_) => 0.65,
              expression: (_) => 0.3,
              expressionAnswer: (_) => 0.55,
            ) ??
            0.65;
        return AbsorbPointer(
          child: Stack(
            children: [
              CarouselSlider(
                items: items,
                carouselController: controller.carouselController,
                options: CarouselOptions(
                  height: 140.toHeight,
                  viewportFraction: fraction,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.vertical,
                  onPageChanged: (index, _) {
                    if (index % 2 != 0) {
                      Future.delayed(const Duration(milliseconds: 100)).then(
                        (_) {
                          if (mounted) {
                            setState(
                              () => widget.controller.incrementItemIndex(),
                            );
                          }
                        },
                      );
                    }
                  },
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: shadowOffset,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        bgColor,
                        bgColor.withOpacity(0.9),
                        bgColor.withOpacity(0.0),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: shadowOffset,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        bgColor,
                        bgColor.withOpacity(0.9),
                        bgColor.withOpacity(0.0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
