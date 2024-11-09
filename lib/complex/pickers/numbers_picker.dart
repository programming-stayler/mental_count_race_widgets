import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:numberpicker/numberpicker.dart';

class SliderNumbersPicker extends StatelessWidget {
  final int value;
  final int minValue;
  final int maxValue;
  final int step;
  final ValueChanged<int> onChanged;
  final Color? color;

  const SliderNumbersPicker({
    super.key,
    required this.value,
    required this.minValue,
    required this.maxValue,
    required this.step,
    required this.onChanged,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = min(constraints.maxWidth, 740);
        final shadowWidth = maxWidth / 3;
        final children = <Widget>[
          Center(
            child: ShadowWrapper(
              color: color ?? style.screenBGColorHex.color,
              child: NumberPicker(
                step: step,
                haptics: true,
                itemWidth: shadowWidth,
                value: value,
                minValue: minValue,
                maxValue: maxValue,
                onChanged: (index) {
                  if (!kIsWeb) {
                    onChanged(index);
                  }
                },
                axis: Axis.horizontal,
                selectedTextStyle: style.textStyle.semiBoldFont.tileTitle
                    .copyWith(colorHex: style.borderColorHex)
                    .textStyle,
                textStyle: style.textStyle.regularFont.buttonTitle
                    .copyWith(colorHex: style.neutralColorHex)
                    .textStyle,
              ),
            ),
          ),
        ];
        if (kIsWeb) {
          children.addAll([
            LeftPositioned(
              left: shadowWidth,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 20.toWidth,
                  color: style.neutralColorHex.color,
                ),
                onPressed: () {
                  if (value > minValue) {
                    onChanged(value - 1);
                  }
                },
              ),
            ),
            RightPositioned(
              right: shadowWidth,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 20.toWidth,
                  color: style.neutralColorHex.color,
                ),
                onPressed: () {
                  if (value < maxValue) {
                    onChanged(value + 1);
                  }
                },
              ),
            ),
          ]);
        }
        return Stack(
          children: children,
        );
      },
    );
  }
}
