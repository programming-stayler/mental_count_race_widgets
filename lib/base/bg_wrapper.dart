import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class BGWrapper extends StatelessWidget {
  final Widget child;
  final Color? overwrittenColor;

  const BGWrapper({
    super.key,
    required this.child,
    this.overwrittenColor,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return Container(
      decoration: BoxDecoration(
        color: overwrittenColor ?? style.screenBGColorHex.color,
      ),
      child: child,
    );
  }
}
