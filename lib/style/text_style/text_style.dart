import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mental_count_race_widgets/widgets.dart';

part 'extensions.dart';

part 'text_style.freezed.dart';

part 'text_style.g.dart';

class TextStyleSystem {
  final String fontFamily;

  TextStyleSystem({
    required this.fontFamily,
  });

  TextUIStyle get lightFont {
    return TextUIStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeightUIStyle.w400,
    );
  }

  TextUIStyle get regularFont {
    return TextUIStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeightUIStyle.w600,
    );
  }

  TextUIStyle get semiBoldFont {
    return TextUIStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeightUIStyle.w700,
    );
  }

  TextUIStyle get boldFont {
    return TextUIStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeightUIStyle.w800,
    );
  }
}

enum FontWeightUIStyle {
  w100,
  w200,
  w300,
  w400,
  w500,
  w600,
  w700,
  w800,
  w900,
}

@freezed
class TextDecorationUIStyle with _$TextDecorationUIStyle {
  const factory TextDecorationUIStyle.none() = _TextDecorationUIStyleNone;

  const factory TextDecorationUIStyle.underline() =
      _TextDecorationUIStyleUnderline;

  const factory TextDecorationUIStyle.overline() =
      _TextDecorationUIStyleOverline;

  const factory TextDecorationUIStyle.lineThrough() =
      _TextDecorationUIStyleLineThrough;

  factory TextDecorationUIStyle.fromJson(Map<String, dynamic> json) =>
      _$TextDecorationUIStyleFromJson(json);
}

@freezed
class TextUIStyle with _$TextUIStyle {
  const factory TextUIStyle({
    String? fontFamily,
    String? colorHex,
    String? backgroundColorHex,
    double? fontSize,
    FontWeightUIStyle? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    TextDecorationUIStyle? textDecoration,
  }) = _TextUIStyle;

  factory TextUIStyle.fromJson(Map<String, dynamic> json) =>
      _$TextUIStyleFromJson(json);
}
