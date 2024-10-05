import 'package:collection/collection.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
        final widgetHeight = 100.toHeight;
        final shadowOffset = widgetHeight / 2;
        final items = <Widget>[];
        final allItems = widget.controller.allItems;
        final currentIndex = widget.controller.currentIndex;
        items.addAll(
          allItems.mapIndexed((index, item) {
            final opacity = index >= currentIndex ? 1.0 : 0.0;
            final child = ExpressionText(
              model: item,
              selected: index == currentIndex,
            );
            if (index <= widget.controller.fakeItemsCount) {
              return Opacity(
                opacity: opacity,
                child: child,
              );
            }
            return AnimatedOpacity(
              key: ValueKey(index),
              duration: 250.milliseconds,
              opacity: opacity,
              child: child,
            );
          }),
        );
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
                options: _CarouselOptions(
                  viewportFraction: fraction,
                  onPageChanged: (index, _) {
                    final fakeCount = widget.controller.fakeItemsCount;
                    if (index == fakeCount) {
                      Future.delayed(100.milliseconds).then(
                        (_) => setState(() {}),
                      );
                    } else {
                      setState(() {});
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

class _CarouselOptions extends CarouselOptions {
  _CarouselOptions({
    super.viewportFraction,
    super.onPageChanged,
  }) : super(
          height: 140.toHeight,
          enableInfiniteScroll: false,
          scrollDirection: Axis.vertical,
        );
}
