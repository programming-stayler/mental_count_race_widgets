// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlignmentUIStyleImpl _$$AlignmentUIStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$AlignmentUIStyleImpl(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$AlignmentUIStyleImplToJson(
        _$AlignmentUIStyleImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

_$OffsetUIStyleImpl _$$OffsetUIStyleImplFromJson(Map<String, dynamic> json) =>
    _$OffsetUIStyleImpl(
      dx: (json['dx'] as num).toDouble(),
      dy: (json['dy'] as num).toDouble(),
    );

Map<String, dynamic> _$$OffsetUIStyleImplToJson(_$OffsetUIStyleImpl instance) =>
    <String, dynamic>{
      'dx': instance.dx,
      'dy': instance.dy,
    };

_$EdgeInsetsUIStyleImpl _$$EdgeInsetsUIStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$EdgeInsetsUIStyleImpl(
      left: (json['left'] as num?)?.toDouble() ?? 0.0,
      top: (json['top'] as num?)?.toDouble() ?? 0.0,
      right: (json['right'] as num?)?.toDouble() ?? 0.0,
      bottom: (json['bottom'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$EdgeInsetsUIStyleImplToJson(
        _$EdgeInsetsUIStyleImpl instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };

_$GradientUIStyleLinearImpl _$$GradientUIStyleLinearImplFromJson(
        Map<String, dynamic> json) =>
    _$GradientUIStyleLinearImpl(
      colorsHex:
          (json['colorsHex'] as List<dynamic>).map((e) => e as String).toList(),
      stops: (json['stops'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GradientUIStyleLinearImplToJson(
        _$GradientUIStyleLinearImpl instance) =>
    <String, dynamic>{
      'colorsHex': instance.colorsHex,
      'stops': instance.stops,
      'runtimeType': instance.$type,
    };

_$GradientUIStyleRadialImpl _$$GradientUIStyleRadialImplFromJson(
        Map<String, dynamic> json) =>
    _$GradientUIStyleRadialImpl(
      colorsHex:
          (json['colorsHex'] as List<dynamic>).map((e) => e as String).toList(),
      stops: (json['stops'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GradientUIStyleRadialImplToJson(
        _$GradientUIStyleRadialImpl instance) =>
    <String, dynamic>{
      'colorsHex': instance.colorsHex,
      'stops': instance.stops,
      'runtimeType': instance.$type,
    };

_$GradientUIStyleSweepImpl _$$GradientUIStyleSweepImplFromJson(
        Map<String, dynamic> json) =>
    _$GradientUIStyleSweepImpl(
      colorsHex:
          (json['colorsHex'] as List<dynamic>).map((e) => e as String).toList(),
      stops: (json['stops'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GradientUIStyleSweepImplToJson(
        _$GradientUIStyleSweepImpl instance) =>
    <String, dynamic>{
      'colorsHex': instance.colorsHex,
      'stops': instance.stops,
      'runtimeType': instance.$type,
    };

_$BorderSideUIStyleImpl _$$BorderSideUIStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BorderSideUIStyleImpl(
      colorHex: json['colorHex'] as String,
      width: (json['width'] as num?)?.toDouble() ?? 1.0,
      style: $enumDecodeNullable(_$BorderStyleEnumMap, json['style']) ??
          BorderStyle.solid,
    );

Map<String, dynamic> _$$BorderSideUIStyleImplToJson(
        _$BorderSideUIStyleImpl instance) =>
    <String, dynamic>{
      'colorHex': instance.colorHex,
      'width': instance.width,
      'style': _$BorderStyleEnumMap[instance.style]!,
    };

const _$BorderStyleEnumMap = {
  BorderStyle.none: 'none',
  BorderStyle.solid: 'solid',
};

_$BorderUIStyleImpl _$$BorderUIStyleImplFromJson(Map<String, dynamic> json) =>
    _$BorderUIStyleImpl(
      left: json['left'] == null
          ? null
          : BorderSideUIStyle.fromJson(json['left'] as Map<String, dynamic>),
      top: json['top'] == null
          ? null
          : BorderSideUIStyle.fromJson(json['top'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : BorderSideUIStyle.fromJson(json['right'] as Map<String, dynamic>),
      bottom: json['bottom'] == null
          ? null
          : BorderSideUIStyle.fromJson(json['bottom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BorderUIStyleImplToJson(_$BorderUIStyleImpl instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };

_$BorderRadiusUIStyleCircularImpl _$$BorderRadiusUIStyleCircularImplFromJson(
        Map<String, dynamic> json) =>
    _$BorderRadiusUIStyleCircularImpl(
      (json['radius'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BorderRadiusUIStyleCircularImplToJson(
        _$BorderRadiusUIStyleCircularImpl instance) =>
    <String, dynamic>{
      'radius': instance.radius,
      'runtimeType': instance.$type,
    };

_$BorderRadiusUIStyleOnlyImpl _$$BorderRadiusUIStyleOnlyImplFromJson(
        Map<String, dynamic> json) =>
    _$BorderRadiusUIStyleOnlyImpl(
      topLeft: (json['topLeft'] as num?)?.toDouble() ?? 0.0,
      topRight: (json['topRight'] as num?)?.toDouble() ?? 0.0,
      bottomLeft: (json['bottomLeft'] as num?)?.toDouble() ?? 0.0,
      bottomRight: (json['bottomRight'] as num?)?.toDouble() ?? 0.0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BorderRadiusUIStyleOnlyImplToJson(
        _$BorderRadiusUIStyleOnlyImpl instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
      'runtimeType': instance.$type,
    };

_$BoxShadowUIStyleImpl _$$BoxShadowUIStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BoxShadowUIStyleImpl(
      colorHex: json['colorHex'] as String,
      offset: OffsetUIStyle.fromJson(json['offset'] as Map<String, dynamic>),
      blurRadius: (json['blurRadius'] as num).toDouble(),
      spreadRadius: (json['spreadRadius'] as num?)?.toDouble() ?? 0.0,
      blurStyle: $enumDecodeNullable(_$BlurStyleEnumMap, json['blurStyle']) ??
          BlurStyle.normal,
    );

Map<String, dynamic> _$$BoxShadowUIStyleImplToJson(
        _$BoxShadowUIStyleImpl instance) =>
    <String, dynamic>{
      'colorHex': instance.colorHex,
      'offset': instance.offset,
      'blurRadius': instance.blurRadius,
      'spreadRadius': instance.spreadRadius,
      'blurStyle': _$BlurStyleEnumMap[instance.blurStyle]!,
    };

const _$BlurStyleEnumMap = {
  BlurStyle.normal: 'normal',
  BlurStyle.solid: 'solid',
  BlurStyle.outer: 'outer',
  BlurStyle.inner: 'inner',
};

_$BoxDecorationUIStyleImpl _$$BoxDecorationUIStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BoxDecorationUIStyleImpl(
      colorHex: json['colorHex'] as String?,
      imagePath: json['imagePath'] as String?,
      border: json['border'] == null
          ? null
          : BorderUIStyle.fromJson(json['border'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : BorderRadiusUIStyle.fromJson(
              json['borderRadius'] as Map<String, dynamic>),
      boxShadow: (json['boxShadow'] as List<dynamic>?)
              ?.map((e) => BoxShadowUIStyle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gradient: json['gradient'] == null
          ? null
          : GradientUIStyle.fromJson(json['gradient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BoxDecorationUIStyleImplToJson(
        _$BoxDecorationUIStyleImpl instance) =>
    <String, dynamic>{
      'colorHex': instance.colorHex,
      'imagePath': instance.imagePath,
      'border': instance.border,
      'borderRadius': instance.borderRadius,
      'boxShadow': instance.boxShadow,
      'gradient': instance.gradient,
    };

_$ContainerUIStyleImpl _$$ContainerUIStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$ContainerUIStyleImpl(
      alignment: json['alignment'] == null
          ? null
          : AlignmentUIStyle.fromJson(
              json['alignment'] as Map<String, dynamic>),
      padding: json['padding'] == null
          ? null
          : EdgeInsetsUIStyle.fromJson(json['padding'] as Map<String, dynamic>),
      margin: json['margin'] == null
          ? null
          : EdgeInsetsUIStyle.fromJson(json['margin'] as Map<String, dynamic>),
      decoration: json['decoration'] == null
          ? null
          : BoxDecorationUIStyle.fromJson(
              json['decoration'] as Map<String, dynamic>),
      clipBehavior:
          $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ?? Clip.none,
    );

Map<String, dynamic> _$$ContainerUIStyleImplToJson(
        _$ContainerUIStyleImpl instance) =>
    <String, dynamic>{
      'alignment': instance.alignment,
      'padding': instance.padding,
      'margin': instance.margin,
      'decoration': instance.decoration,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
