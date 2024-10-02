import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mental_count_race_widgets/widgets.dart';

part 'container_style.freezed.dart';

part 'container_style.g.dart';

part 'extensions.dart';

@freezed
class AlignmentUIStyle with _$AlignmentUIStyle {
  const factory AlignmentUIStyle({
    required double x,
    required double y,
  }) = _AlignmentUIStyle;

  factory AlignmentUIStyle.fromJson(Map<String, dynamic> json) =>
      _$AlignmentUIStyleFromJson(json);
}

@freezed
class OffsetUIStyle with _$OffsetUIStyle {
  const factory OffsetUIStyle({
    required double dx,
    required double dy,
  }) = _OffsetUIStyle;

  factory OffsetUIStyle.fromJson(Map<String, dynamic> json) =>
      _$OffsetUIStyleFromJson(json);
}

@freezed
class EdgeInsetsUIStyle with _$EdgeInsetsUIStyle {
  const factory EdgeInsetsUIStyle({
    @Default(0.0) double left,
    @Default(0.0) double top,
    @Default(0.0) double right,
    @Default(0.0) double bottom,
  }) = _EdgeInsetsUIStyle;

  factory EdgeInsetsUIStyle.fromJson(Map<String, dynamic> json) =>
      _$EdgeInsetsUIStyleFromJson(json);
}

@freezed
class GradientUIStyle with _$GradientUIStyle {
  const factory GradientUIStyle.linear({
    required List<String> colorsHex,
    required List<double> stops,
  }) = _GradientUIStyleLinear;

  const factory GradientUIStyle.radial({
    required List<String> colorsHex,
    required List<double> stops,
  }) = _GradientUIStyleRadial;

  const factory GradientUIStyle.sweep({
    required List<String> colorsHex,
    required List<double> stops,
  }) = _GradientUIStyleSweep;

  factory GradientUIStyle.fromJson(Map<String, dynamic> json) =>
      _$GradientUIStyleFromJson(json);
}

@freezed
class BorderSideUIStyle with _$BorderSideUIStyle {
  const factory BorderSideUIStyle({
    required String colorHex,
    @Default(1.0) double width,
    @Default(BorderStyle.solid) BorderStyle style,
  }) = _BorderSideUIStyle;

  factory BorderSideUIStyle.fromJson(Map<String, dynamic> json) =>
      _$BorderSideUIStyleFromJson(json);
}

@freezed
class BorderUIStyle with _$BorderUIStyle {
  const factory BorderUIStyle({
    BorderSideUIStyle? left,
    BorderSideUIStyle? top,
    BorderSideUIStyle? right,
    BorderSideUIStyle? bottom,
  }) = _BorderUIStyle;

  factory BorderUIStyle.fromJson(Map<String, dynamic> json) =>
      _$BorderUIStyleFromJson(json);
}

@freezed
class BorderRadiusUIStyle with _$BorderRadiusUIStyle {
  const factory BorderRadiusUIStyle.circular(
    double radius,
  ) = _BorderRadiusUIStyleCircular;

  const factory BorderRadiusUIStyle.only({
    @Default(0.0) double topLeft,
    @Default(0.0) double topRight,
    @Default(0.0) double bottomLeft,
    @Default(0.0) double bottomRight,
  }) = _BorderRadiusUIStyleOnly;

  factory BorderRadiusUIStyle.fromJson(Map<String, dynamic> json) =>
      _$BorderRadiusUIStyleFromJson(json);
}

@freezed
class BoxShadowUIStyle with _$BoxShadowUIStyle {
  const factory BoxShadowUIStyle({
    required String colorHex,
    required OffsetUIStyle offset,
    required double blurRadius,
    @Default(0.0) double spreadRadius,
    @Default(BlurStyle.normal) BlurStyle blurStyle,
  }) = _BoxShadowUIStyle;

  factory BoxShadowUIStyle.fromJson(Map<String, dynamic> json) =>
      _$BoxShadowUIStyleFromJson(json);
}

@freezed
class BoxDecorationUIStyle with _$BoxDecorationUIStyle {
  const factory BoxDecorationUIStyle({
    String? colorHex,
    String? imagePath,
    BorderUIStyle? border,
    BorderRadiusUIStyle? borderRadius,
    @Default([]) List<BoxShadowUIStyle> boxShadow,
    GradientUIStyle? gradient,
  }) = _BoxDecorationUIStyle;

  factory BoxDecorationUIStyle.fromJson(Map<String, dynamic> json) =>
      _$BoxDecorationUIStyleFromJson(json);
}

@freezed
class ContainerUIStyle with _$ContainerUIStyle {
  const factory ContainerUIStyle({
    AlignmentUIStyle? alignment,
    EdgeInsetsUIStyle? padding,
    EdgeInsetsUIStyle? margin,
    BoxDecorationUIStyle? decoration,
    @Default(Clip.none) Clip clipBehavior,
  }) = _ContainerUIStyle;

  factory ContainerUIStyle.fromJson(Map<String, dynamic> json) =>
      _$ContainerUIStyleFromJson(json);
}
