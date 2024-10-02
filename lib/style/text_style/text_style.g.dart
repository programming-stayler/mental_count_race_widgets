// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextDecorationUIStyleNoneImpl _$$TextDecorationUIStyleNoneImplFromJson(
        Map<String, dynamic> json) =>
    _$TextDecorationUIStyleNoneImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextDecorationUIStyleNoneImplToJson(
        _$TextDecorationUIStyleNoneImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TextDecorationUIStyleUnderlineImpl
    _$$TextDecorationUIStyleUnderlineImplFromJson(Map<String, dynamic> json) =>
        _$TextDecorationUIStyleUnderlineImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$TextDecorationUIStyleUnderlineImplToJson(
        _$TextDecorationUIStyleUnderlineImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TextDecorationUIStyleOverlineImpl
    _$$TextDecorationUIStyleOverlineImplFromJson(Map<String, dynamic> json) =>
        _$TextDecorationUIStyleOverlineImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$TextDecorationUIStyleOverlineImplToJson(
        _$TextDecorationUIStyleOverlineImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TextDecorationUIStyleLineThroughImpl
    _$$TextDecorationUIStyleLineThroughImplFromJson(
            Map<String, dynamic> json) =>
        _$TextDecorationUIStyleLineThroughImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$TextDecorationUIStyleLineThroughImplToJson(
        _$TextDecorationUIStyleLineThroughImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TextUIStyleImpl _$$TextUIStyleImplFromJson(Map<String, dynamic> json) =>
    _$TextUIStyleImpl(
      fontFamily: json['fontFamily'] as String?,
      colorHex: json['colorHex'] as String?,
      backgroundColorHex: json['backgroundColorHex'] as String?,
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      fontWeight:
          $enumDecodeNullable(_$FontWeightUIStyleEnumMap, json['fontWeight']),
      fontStyle: $enumDecodeNullable(_$FontStyleEnumMap, json['fontStyle']),
      letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
      wordSpacing: (json['wordSpacing'] as num?)?.toDouble(),
      textBaseline:
          $enumDecodeNullable(_$TextBaselineEnumMap, json['textBaseline']),
      height: (json['height'] as num?)?.toDouble(),
      leadingDistribution: $enumDecodeNullable(
          _$TextLeadingDistributionEnumMap, json['leadingDistribution']),
      textDecoration: json['textDecoration'] == null
          ? null
          : TextDecorationUIStyle.fromJson(
              json['textDecoration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TextUIStyleImplToJson(_$TextUIStyleImpl instance) =>
    <String, dynamic>{
      'fontFamily': instance.fontFamily,
      'colorHex': instance.colorHex,
      'backgroundColorHex': instance.backgroundColorHex,
      'fontSize': instance.fontSize,
      'fontWeight': _$FontWeightUIStyleEnumMap[instance.fontWeight],
      'fontStyle': _$FontStyleEnumMap[instance.fontStyle],
      'letterSpacing': instance.letterSpacing,
      'wordSpacing': instance.wordSpacing,
      'textBaseline': _$TextBaselineEnumMap[instance.textBaseline],
      'height': instance.height,
      'leadingDistribution':
          _$TextLeadingDistributionEnumMap[instance.leadingDistribution],
      'textDecoration': instance.textDecoration,
    };

const _$FontWeightUIStyleEnumMap = {
  FontWeightUIStyle.w100: 'w100',
  FontWeightUIStyle.w200: 'w200',
  FontWeightUIStyle.w300: 'w300',
  FontWeightUIStyle.w400: 'w400',
  FontWeightUIStyle.w500: 'w500',
  FontWeightUIStyle.w600: 'w600',
  FontWeightUIStyle.w700: 'w700',
  FontWeightUIStyle.w800: 'w800',
  FontWeightUIStyle.w900: 'w900',
};

const _$FontStyleEnumMap = {
  FontStyle.normal: 'normal',
  FontStyle.italic: 'italic',
};

const _$TextBaselineEnumMap = {
  TextBaseline.alphabetic: 'alphabetic',
  TextBaseline.ideographic: 'ideographic',
};

const _$TextLeadingDistributionEnumMap = {
  TextLeadingDistribution.proportional: 'proportional',
  TextLeadingDistribution.even: 'even',
};
