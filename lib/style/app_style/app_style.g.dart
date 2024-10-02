// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStyleSystemImpl _$$AppStyleSystemImplFromJson(Map<String, dynamic> json) =>
    _$AppStyleSystemImpl(
      fontFamily: json['fontFamily'] as String,
      actionColorHex: json['actionColorHex'] as String,
      screenBGColorHex: json['screenBGColorHex'] as String,
      desaturatedColorHex: json['desaturatedColorHex'] as String,
      positiveColorHex: json['positiveColorHex'] as String,
      negativeColorHex: json['negativeColorHex'] as String,
      neutralColorHex: json['neutralColorHex'] as String,
      borderColorHex: json['borderColorHex'] as String,
      containerStyle: ContainerUIStyle.fromJson(
          json['containerStyle'] as Map<String, dynamic>),
      actionButtonsStyle: BoxDecorationUIStyle.fromJson(
          json['actionButtonsStyle'] as Map<String, dynamic>),
      appSheetStyle: BoxDecorationUIStyle.fromJson(
          json['appSheetStyle'] as Map<String, dynamic>),
      keyboardRegularStyle: ContainerUIStyle.fromJson(
          json['keyboardRegularStyle'] as Map<String, dynamic>),
      keyboardActionStyle: ContainerUIStyle.fromJson(
          json['keyboardActionStyle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppStyleSystemImplToJson(
        _$AppStyleSystemImpl instance) =>
    <String, dynamic>{
      'fontFamily': instance.fontFamily,
      'actionColorHex': instance.actionColorHex,
      'screenBGColorHex': instance.screenBGColorHex,
      'desaturatedColorHex': instance.desaturatedColorHex,
      'positiveColorHex': instance.positiveColorHex,
      'negativeColorHex': instance.negativeColorHex,
      'neutralColorHex': instance.neutralColorHex,
      'borderColorHex': instance.borderColorHex,
      'containerStyle': instance.containerStyle,
      'actionButtonsStyle': instance.actionButtonsStyle,
      'appSheetStyle': instance.appSheetStyle,
      'keyboardRegularStyle': instance.keyboardRegularStyle,
      'keyboardActionStyle': instance.keyboardActionStyle,
    };
