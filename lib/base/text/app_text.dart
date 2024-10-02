import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class AppText extends Text {
  AppText(
      super.data, {
        TextUIStyle? uiStyle,
        super.maxLines,
        super.overflow,
        super.textHeightBehavior,
        super.textAlign,
        super.key,
      }) : super(
    style: uiStyle?.textStyle,
  );
}