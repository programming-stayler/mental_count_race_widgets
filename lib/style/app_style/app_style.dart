import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../style.dart';

part 'app_style.freezed.dart';

part 'app_style.g.dart';

@freezed
class AppStyleSystem with _$AppStyleSystem {
  const factory AppStyleSystem({
    required String fontFamily,
    required String actionColorHex,
    required String screenBGColorHex,
    required String desaturatedColorHex,
    required String positiveColorHex,
    required String negativeColorHex,
    required String neutralColorHex,
    required String borderColorHex,
    required ContainerUIStyle containerStyle,
    required ContainerUIStyle menuSectionStyle,
    required BoxDecorationUIStyle actionButtonsStyle,
    required BoxDecorationUIStyle appSheetStyle,
    required ContainerUIStyle keyboardRegularStyle,
    required ContainerUIStyle keyboardActionStyle,
  }) = _AppStyleSystem;

  factory AppStyleSystem.fromJson(Map<String, dynamic> json) =>
      _$AppStyleSystemFromJson(json);
}

extension AppStyleSystemUtils on AppStyleSystem {
  TextStyleSystem get textStyle {
    return TextStyleSystem(fontFamily: fontFamily);
  }
}

final neuBrutalism = () {
  const shadowColor = '343434';
  const borderColor = '343434';
  const actionColor = 'F3B048';
  const screenColor = 'EAEAEA';
  const appSheetBGColor = 'FEFCF6';
  const appSheetBorderColor = '787875';
  const offset = OffsetUIStyle(
    dx: 4,
    dy: 4,
  );
  const borderSide = BorderSideUIStyle(
    colorHex: borderColor,
    width: 3,
  );
  const border = BorderUIStyle(
    left: borderSide,
    right: borderSide,
    top: borderSide,
    bottom: borderSide,
  );
  const boxShadow = BoxShadowUIStyle(
    colorHex: shadowColor,
    offset: offset,
    blurRadius: 0,
    blurStyle: BlurStyle.solid,
  );
  const decoratedBox = BoxDecorationUIStyle(
    border: border,
    boxShadow: [boxShadow],
    colorHex: actionColor,
  );
  const containerStyle = ContainerUIStyle(
    padding: EdgeInsetsUIStyle(
      left: 12,
      right: 12,
      top: 8,
      bottom: 8,
    ),
    decoration: decoratedBox,
  );
  return AppStyleSystem(
    fontFamily: 'Popins',
    actionColorHex: actionColor,
    screenBGColorHex: screenColor,
    desaturatedColorHex: '999999',
    positiveColorHex: '85A14D',
    negativeColorHex: 'E37965',
    neutralColorHex: '808285',
    borderColorHex: borderColor,
    containerStyle: containerStyle,
    menuSectionStyle: containerStyle.copyWith(
      decoration: decoratedBox.copyWith(
        colorHex: appSheetBGColor,
      ),
    ),
    actionButtonsStyle: decoratedBox.copyWith(
      borderRadius: const BorderRadiusUIStyle.circular(22),
      border: border,
    ),
    appSheetStyle: decoratedBox.copyWith(
      colorHex: appSheetBGColor,
      borderRadius: const BorderRadiusUIStyle.circular(24),
      border: border.copyWith(
        left: border.left?.copyWith(
          colorHex: appSheetBorderColor,
          width: 1.5,
        ),
        right: border.right?.copyWith(
          colorHex: appSheetBorderColor,
          width: 1.5,
        ),
        top: border.top?.copyWith(colorHex: appSheetBorderColor),
        bottom: border.bottom?.copyWith(colorHex: appSheetBorderColor),
      ),
    ),
    keyboardRegularStyle: const ContainerUIStyle(
      alignment: AlignmentUIStyle(x: 0.0, y: 0.0),
      decoration: BoxDecorationUIStyle(
        colorHex: screenColor,
        borderRadius: BorderRadiusUIStyle.circular(16),
      ),
    ),
    keyboardActionStyle: const ContainerUIStyle(
      alignment: AlignmentUIStyle(x: 0.0, y: 0.0),
      decoration: BoxDecorationUIStyle(
        colorHex: actionColor,
        borderRadius: BorderRadiusUIStyle.circular(16),
      ),
    ),
  );
}();
