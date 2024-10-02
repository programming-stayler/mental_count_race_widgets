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
        return ShadowWrapper(
          color: color ?? style.screenBGColorHex.color,
          child: NumberPicker(
            step: step,
            haptics: true,
            itemWidth: constraints.maxWidth / 3,
            value: value,
            minValue: minValue,
            maxValue: maxValue,
            onChanged: onChanged,
            axis: Axis.horizontal,
            selectedTextStyle: style.textStyle.semiBoldFont.tileTitle
                .copyWith(colorHex: style.borderColorHex)
                .textStyle,
            textStyle: style.textStyle.regularFont.buttonTitle
                .copyWith(colorHex: style.neutralColorHex)
                .textStyle,
          ),
        );
      },
    );
  }
}
