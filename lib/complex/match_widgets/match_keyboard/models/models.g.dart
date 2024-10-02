// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      showResultInRuntime: json['showResultInRuntime'] as bool? ?? true,
      showOpponentsResultInRuntime:
          json['showOpponentsResultInRuntime'] as bool? ?? true,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'showResultInRuntime': instance.showResultInRuntime,
      'showOpponentsResultInRuntime': instance.showOpponentsResultInRuntime,
    };

_$KeyboardSettingsImpl _$$KeyboardSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$KeyboardSettingsImpl(
      keySize: (json['keySize'] as num?)?.toDouble() ?? 44,
      keysOffset: (json['keysOffset'] as num?)?.toDouble() ?? 8,
    );

Map<String, dynamic> _$$KeyboardSettingsImplToJson(
        _$KeyboardSettingsImpl instance) =>
    <String, dynamic>{
      'keySize': instance.keySize,
      'keysOffset': instance.keysOffset,
    };
