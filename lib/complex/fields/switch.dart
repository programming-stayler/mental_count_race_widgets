import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mental_count_race_widgets/style/style.dart';
import 'package:mental_count_race_widgets/utils/utils.dart';

class AppSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final neutralColor = style.neutralColorHex.color;
    final positiveColor = style.positiveColorHex.color;
    return AnimatedToggleSwitch.customByHeight(
      current: value,
      values: const [false, true],
      height: 28.toHeight,
      animationCurve: Curves.linear,
      animationDuration: 250.milliseconds,
      onTap: (v) => onChanged(v.tapped?.value ?? !value),
      onChanged: onChanged,
      styleBuilder: (value) => ToggleStyle(
        indicatorColor: value ? positiveColor : neutralColor,
        borderColor: value ? positiveColor : neutralColor,
      ),
      borderWidth: 2.toWidth,
      // innerColor: mode.launch ? AppColors.green7CAF41 : AppColors.whiteF2F2F2,
      // indicatorBorder: Border.all(
      //   color: mode.launch ? AppColors.green7CAF41 : AppColors.whiteF2F2F2,
      //   width: mode.launch ? 1.5 : 3,
      // ),
    );
  }
}
