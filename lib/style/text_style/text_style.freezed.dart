// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextDecorationUIStyle _$TextDecorationUIStyleFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'none':
      return _TextDecorationUIStyleNone.fromJson(json);
    case 'underline':
      return _TextDecorationUIStyleUnderline.fromJson(json);
    case 'overline':
      return _TextDecorationUIStyleOverline.fromJson(json);
    case 'lineThrough':
      return _TextDecorationUIStyleLineThrough.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'TextDecorationUIStyle',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TextDecorationUIStyle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() underline,
    required TResult Function() overline,
    required TResult Function() lineThrough,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? underline,
    TResult? Function()? overline,
    TResult? Function()? lineThrough,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? underline,
    TResult Function()? overline,
    TResult Function()? lineThrough,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextDecorationUIStyleNone value) none,
    required TResult Function(_TextDecorationUIStyleUnderline value) underline,
    required TResult Function(_TextDecorationUIStyleOverline value) overline,
    required TResult Function(_TextDecorationUIStyleLineThrough value)
        lineThrough,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextDecorationUIStyleNone value)? none,
    TResult? Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult? Function(_TextDecorationUIStyleOverline value)? overline,
    TResult? Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextDecorationUIStyleNone value)? none,
    TResult Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult Function(_TextDecorationUIStyleOverline value)? overline,
    TResult Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TextDecorationUIStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDecorationUIStyleCopyWith<$Res> {
  factory $TextDecorationUIStyleCopyWith(TextDecorationUIStyle value,
          $Res Function(TextDecorationUIStyle) then) =
      _$TextDecorationUIStyleCopyWithImpl<$Res, TextDecorationUIStyle>;
}

/// @nodoc
class _$TextDecorationUIStyleCopyWithImpl<$Res,
        $Val extends TextDecorationUIStyle>
    implements $TextDecorationUIStyleCopyWith<$Res> {
  _$TextDecorationUIStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextDecorationUIStyle
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TextDecorationUIStyleNoneImplCopyWith<$Res> {
  factory _$$TextDecorationUIStyleNoneImplCopyWith(
          _$TextDecorationUIStyleNoneImpl value,
          $Res Function(_$TextDecorationUIStyleNoneImpl) then) =
      __$$TextDecorationUIStyleNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextDecorationUIStyleNoneImplCopyWithImpl<$Res>
    extends _$TextDecorationUIStyleCopyWithImpl<$Res,
        _$TextDecorationUIStyleNoneImpl>
    implements _$$TextDecorationUIStyleNoneImplCopyWith<$Res> {
  __$$TextDecorationUIStyleNoneImplCopyWithImpl(
      _$TextDecorationUIStyleNoneImpl _value,
      $Res Function(_$TextDecorationUIStyleNoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextDecorationUIStyle
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TextDecorationUIStyleNoneImpl implements _TextDecorationUIStyleNone {
  const _$TextDecorationUIStyleNoneImpl({final String? $type})
      : $type = $type ?? 'none';

  factory _$TextDecorationUIStyleNoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextDecorationUIStyleNoneImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TextDecorationUIStyle.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextDecorationUIStyleNoneImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() underline,
    required TResult Function() overline,
    required TResult Function() lineThrough,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? underline,
    TResult? Function()? overline,
    TResult? Function()? lineThrough,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? underline,
    TResult Function()? overline,
    TResult Function()? lineThrough,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextDecorationUIStyleNone value) none,
    required TResult Function(_TextDecorationUIStyleUnderline value) underline,
    required TResult Function(_TextDecorationUIStyleOverline value) overline,
    required TResult Function(_TextDecorationUIStyleLineThrough value)
        lineThrough,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextDecorationUIStyleNone value)? none,
    TResult? Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult? Function(_TextDecorationUIStyleOverline value)? overline,
    TResult? Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextDecorationUIStyleNone value)? none,
    TResult Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult Function(_TextDecorationUIStyleOverline value)? overline,
    TResult Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextDecorationUIStyleNoneImplToJson(
      this,
    );
  }
}

abstract class _TextDecorationUIStyleNone implements TextDecorationUIStyle {
  const factory _TextDecorationUIStyleNone() = _$TextDecorationUIStyleNoneImpl;

  factory _TextDecorationUIStyleNone.fromJson(Map<String, dynamic> json) =
      _$TextDecorationUIStyleNoneImpl.fromJson;
}

/// @nodoc
abstract class _$$TextDecorationUIStyleUnderlineImplCopyWith<$Res> {
  factory _$$TextDecorationUIStyleUnderlineImplCopyWith(
          _$TextDecorationUIStyleUnderlineImpl value,
          $Res Function(_$TextDecorationUIStyleUnderlineImpl) then) =
      __$$TextDecorationUIStyleUnderlineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextDecorationUIStyleUnderlineImplCopyWithImpl<$Res>
    extends _$TextDecorationUIStyleCopyWithImpl<$Res,
        _$TextDecorationUIStyleUnderlineImpl>
    implements _$$TextDecorationUIStyleUnderlineImplCopyWith<$Res> {
  __$$TextDecorationUIStyleUnderlineImplCopyWithImpl(
      _$TextDecorationUIStyleUnderlineImpl _value,
      $Res Function(_$TextDecorationUIStyleUnderlineImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextDecorationUIStyle
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TextDecorationUIStyleUnderlineImpl
    implements _TextDecorationUIStyleUnderline {
  const _$TextDecorationUIStyleUnderlineImpl({final String? $type})
      : $type = $type ?? 'underline';

  factory _$TextDecorationUIStyleUnderlineImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TextDecorationUIStyleUnderlineImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TextDecorationUIStyle.underline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextDecorationUIStyleUnderlineImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() underline,
    required TResult Function() overline,
    required TResult Function() lineThrough,
  }) {
    return underline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? underline,
    TResult? Function()? overline,
    TResult? Function()? lineThrough,
  }) {
    return underline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? underline,
    TResult Function()? overline,
    TResult Function()? lineThrough,
    required TResult orElse(),
  }) {
    if (underline != null) {
      return underline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextDecorationUIStyleNone value) none,
    required TResult Function(_TextDecorationUIStyleUnderline value) underline,
    required TResult Function(_TextDecorationUIStyleOverline value) overline,
    required TResult Function(_TextDecorationUIStyleLineThrough value)
        lineThrough,
  }) {
    return underline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextDecorationUIStyleNone value)? none,
    TResult? Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult? Function(_TextDecorationUIStyleOverline value)? overline,
    TResult? Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
  }) {
    return underline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextDecorationUIStyleNone value)? none,
    TResult Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult Function(_TextDecorationUIStyleOverline value)? overline,
    TResult Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
    required TResult orElse(),
  }) {
    if (underline != null) {
      return underline(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextDecorationUIStyleUnderlineImplToJson(
      this,
    );
  }
}

abstract class _TextDecorationUIStyleUnderline
    implements TextDecorationUIStyle {
  const factory _TextDecorationUIStyleUnderline() =
      _$TextDecorationUIStyleUnderlineImpl;

  factory _TextDecorationUIStyleUnderline.fromJson(Map<String, dynamic> json) =
      _$TextDecorationUIStyleUnderlineImpl.fromJson;
}

/// @nodoc
abstract class _$$TextDecorationUIStyleOverlineImplCopyWith<$Res> {
  factory _$$TextDecorationUIStyleOverlineImplCopyWith(
          _$TextDecorationUIStyleOverlineImpl value,
          $Res Function(_$TextDecorationUIStyleOverlineImpl) then) =
      __$$TextDecorationUIStyleOverlineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextDecorationUIStyleOverlineImplCopyWithImpl<$Res>
    extends _$TextDecorationUIStyleCopyWithImpl<$Res,
        _$TextDecorationUIStyleOverlineImpl>
    implements _$$TextDecorationUIStyleOverlineImplCopyWith<$Res> {
  __$$TextDecorationUIStyleOverlineImplCopyWithImpl(
      _$TextDecorationUIStyleOverlineImpl _value,
      $Res Function(_$TextDecorationUIStyleOverlineImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextDecorationUIStyle
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TextDecorationUIStyleOverlineImpl
    implements _TextDecorationUIStyleOverline {
  const _$TextDecorationUIStyleOverlineImpl({final String? $type})
      : $type = $type ?? 'overline';

  factory _$TextDecorationUIStyleOverlineImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TextDecorationUIStyleOverlineImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TextDecorationUIStyle.overline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextDecorationUIStyleOverlineImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() underline,
    required TResult Function() overline,
    required TResult Function() lineThrough,
  }) {
    return overline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? underline,
    TResult? Function()? overline,
    TResult? Function()? lineThrough,
  }) {
    return overline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? underline,
    TResult Function()? overline,
    TResult Function()? lineThrough,
    required TResult orElse(),
  }) {
    if (overline != null) {
      return overline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextDecorationUIStyleNone value) none,
    required TResult Function(_TextDecorationUIStyleUnderline value) underline,
    required TResult Function(_TextDecorationUIStyleOverline value) overline,
    required TResult Function(_TextDecorationUIStyleLineThrough value)
        lineThrough,
  }) {
    return overline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextDecorationUIStyleNone value)? none,
    TResult? Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult? Function(_TextDecorationUIStyleOverline value)? overline,
    TResult? Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
  }) {
    return overline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextDecorationUIStyleNone value)? none,
    TResult Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult Function(_TextDecorationUIStyleOverline value)? overline,
    TResult Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
    required TResult orElse(),
  }) {
    if (overline != null) {
      return overline(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextDecorationUIStyleOverlineImplToJson(
      this,
    );
  }
}

abstract class _TextDecorationUIStyleOverline implements TextDecorationUIStyle {
  const factory _TextDecorationUIStyleOverline() =
      _$TextDecorationUIStyleOverlineImpl;

  factory _TextDecorationUIStyleOverline.fromJson(Map<String, dynamic> json) =
      _$TextDecorationUIStyleOverlineImpl.fromJson;
}

/// @nodoc
abstract class _$$TextDecorationUIStyleLineThroughImplCopyWith<$Res> {
  factory _$$TextDecorationUIStyleLineThroughImplCopyWith(
          _$TextDecorationUIStyleLineThroughImpl value,
          $Res Function(_$TextDecorationUIStyleLineThroughImpl) then) =
      __$$TextDecorationUIStyleLineThroughImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextDecorationUIStyleLineThroughImplCopyWithImpl<$Res>
    extends _$TextDecorationUIStyleCopyWithImpl<$Res,
        _$TextDecorationUIStyleLineThroughImpl>
    implements _$$TextDecorationUIStyleLineThroughImplCopyWith<$Res> {
  __$$TextDecorationUIStyleLineThroughImplCopyWithImpl(
      _$TextDecorationUIStyleLineThroughImpl _value,
      $Res Function(_$TextDecorationUIStyleLineThroughImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextDecorationUIStyle
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TextDecorationUIStyleLineThroughImpl
    implements _TextDecorationUIStyleLineThrough {
  const _$TextDecorationUIStyleLineThroughImpl({final String? $type})
      : $type = $type ?? 'lineThrough';

  factory _$TextDecorationUIStyleLineThroughImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TextDecorationUIStyleLineThroughImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TextDecorationUIStyle.lineThrough()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextDecorationUIStyleLineThroughImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() underline,
    required TResult Function() overline,
    required TResult Function() lineThrough,
  }) {
    return lineThrough();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? underline,
    TResult? Function()? overline,
    TResult? Function()? lineThrough,
  }) {
    return lineThrough?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? underline,
    TResult Function()? overline,
    TResult Function()? lineThrough,
    required TResult orElse(),
  }) {
    if (lineThrough != null) {
      return lineThrough();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextDecorationUIStyleNone value) none,
    required TResult Function(_TextDecorationUIStyleUnderline value) underline,
    required TResult Function(_TextDecorationUIStyleOverline value) overline,
    required TResult Function(_TextDecorationUIStyleLineThrough value)
        lineThrough,
  }) {
    return lineThrough(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextDecorationUIStyleNone value)? none,
    TResult? Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult? Function(_TextDecorationUIStyleOverline value)? overline,
    TResult? Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
  }) {
    return lineThrough?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextDecorationUIStyleNone value)? none,
    TResult Function(_TextDecorationUIStyleUnderline value)? underline,
    TResult Function(_TextDecorationUIStyleOverline value)? overline,
    TResult Function(_TextDecorationUIStyleLineThrough value)? lineThrough,
    required TResult orElse(),
  }) {
    if (lineThrough != null) {
      return lineThrough(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextDecorationUIStyleLineThroughImplToJson(
      this,
    );
  }
}

abstract class _TextDecorationUIStyleLineThrough
    implements TextDecorationUIStyle {
  const factory _TextDecorationUIStyleLineThrough() =
      _$TextDecorationUIStyleLineThroughImpl;

  factory _TextDecorationUIStyleLineThrough.fromJson(
          Map<String, dynamic> json) =
      _$TextDecorationUIStyleLineThroughImpl.fromJson;
}

TextUIStyle _$TextUIStyleFromJson(Map<String, dynamic> json) {
  return _TextUIStyle.fromJson(json);
}

/// @nodoc
mixin _$TextUIStyle {
  String? get fontFamily => throw _privateConstructorUsedError;
  String? get colorHex => throw _privateConstructorUsedError;
  String? get backgroundColorHex => throw _privateConstructorUsedError;
  double? get fontSize => throw _privateConstructorUsedError;
  FontWeightUIStyle? get fontWeight => throw _privateConstructorUsedError;
  FontStyle? get fontStyle => throw _privateConstructorUsedError;
  double? get letterSpacing => throw _privateConstructorUsedError;
  double? get wordSpacing => throw _privateConstructorUsedError;
  TextBaseline? get textBaseline => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  TextLeadingDistribution? get leadingDistribution =>
      throw _privateConstructorUsedError;
  TextDecorationUIStyle? get textDecoration =>
      throw _privateConstructorUsedError;

  /// Serializes this TextUIStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextUIStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextUIStyleCopyWith<TextUIStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextUIStyleCopyWith<$Res> {
  factory $TextUIStyleCopyWith(
          TextUIStyle value, $Res Function(TextUIStyle) then) =
      _$TextUIStyleCopyWithImpl<$Res, TextUIStyle>;
  @useResult
  $Res call(
      {String? fontFamily,
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
      TextDecorationUIStyle? textDecoration});

  $TextDecorationUIStyleCopyWith<$Res>? get textDecoration;
}

/// @nodoc
class _$TextUIStyleCopyWithImpl<$Res, $Val extends TextUIStyle>
    implements $TextUIStyleCopyWith<$Res> {
  _$TextUIStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextUIStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamily = freezed,
    Object? colorHex = freezed,
    Object? backgroundColorHex = freezed,
    Object? fontSize = freezed,
    Object? fontWeight = freezed,
    Object? fontStyle = freezed,
    Object? letterSpacing = freezed,
    Object? wordSpacing = freezed,
    Object? textBaseline = freezed,
    Object? height = freezed,
    Object? leadingDistribution = freezed,
    Object? textDecoration = freezed,
  }) {
    return _then(_value.copyWith(
      fontFamily: freezed == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      colorHex: freezed == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorHex: freezed == backgroundColorHex
          ? _value.backgroundColorHex
          : backgroundColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      fontWeight: freezed == fontWeight
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as FontWeightUIStyle?,
      fontStyle: freezed == fontStyle
          ? _value.fontStyle
          : fontStyle // ignore: cast_nullable_to_non_nullable
              as FontStyle?,
      letterSpacing: freezed == letterSpacing
          ? _value.letterSpacing
          : letterSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      wordSpacing: freezed == wordSpacing
          ? _value.wordSpacing
          : wordSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      textBaseline: freezed == textBaseline
          ? _value.textBaseline
          : textBaseline // ignore: cast_nullable_to_non_nullable
              as TextBaseline?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      leadingDistribution: freezed == leadingDistribution
          ? _value.leadingDistribution
          : leadingDistribution // ignore: cast_nullable_to_non_nullable
              as TextLeadingDistribution?,
      textDecoration: freezed == textDecoration
          ? _value.textDecoration
          : textDecoration // ignore: cast_nullable_to_non_nullable
              as TextDecorationUIStyle?,
    ) as $Val);
  }

  /// Create a copy of TextUIStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextDecorationUIStyleCopyWith<$Res>? get textDecoration {
    if (_value.textDecoration == null) {
      return null;
    }

    return $TextDecorationUIStyleCopyWith<$Res>(_value.textDecoration!,
        (value) {
      return _then(_value.copyWith(textDecoration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextUIStyleImplCopyWith<$Res>
    implements $TextUIStyleCopyWith<$Res> {
  factory _$$TextUIStyleImplCopyWith(
          _$TextUIStyleImpl value, $Res Function(_$TextUIStyleImpl) then) =
      __$$TextUIStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fontFamily,
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
      TextDecorationUIStyle? textDecoration});

  @override
  $TextDecorationUIStyleCopyWith<$Res>? get textDecoration;
}

/// @nodoc
class __$$TextUIStyleImplCopyWithImpl<$Res>
    extends _$TextUIStyleCopyWithImpl<$Res, _$TextUIStyleImpl>
    implements _$$TextUIStyleImplCopyWith<$Res> {
  __$$TextUIStyleImplCopyWithImpl(
      _$TextUIStyleImpl _value, $Res Function(_$TextUIStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextUIStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamily = freezed,
    Object? colorHex = freezed,
    Object? backgroundColorHex = freezed,
    Object? fontSize = freezed,
    Object? fontWeight = freezed,
    Object? fontStyle = freezed,
    Object? letterSpacing = freezed,
    Object? wordSpacing = freezed,
    Object? textBaseline = freezed,
    Object? height = freezed,
    Object? leadingDistribution = freezed,
    Object? textDecoration = freezed,
  }) {
    return _then(_$TextUIStyleImpl(
      fontFamily: freezed == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      colorHex: freezed == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorHex: freezed == backgroundColorHex
          ? _value.backgroundColorHex
          : backgroundColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      fontWeight: freezed == fontWeight
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as FontWeightUIStyle?,
      fontStyle: freezed == fontStyle
          ? _value.fontStyle
          : fontStyle // ignore: cast_nullable_to_non_nullable
              as FontStyle?,
      letterSpacing: freezed == letterSpacing
          ? _value.letterSpacing
          : letterSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      wordSpacing: freezed == wordSpacing
          ? _value.wordSpacing
          : wordSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      textBaseline: freezed == textBaseline
          ? _value.textBaseline
          : textBaseline // ignore: cast_nullable_to_non_nullable
              as TextBaseline?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      leadingDistribution: freezed == leadingDistribution
          ? _value.leadingDistribution
          : leadingDistribution // ignore: cast_nullable_to_non_nullable
              as TextLeadingDistribution?,
      textDecoration: freezed == textDecoration
          ? _value.textDecoration
          : textDecoration // ignore: cast_nullable_to_non_nullable
              as TextDecorationUIStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextUIStyleImpl implements _TextUIStyle {
  const _$TextUIStyleImpl(
      {this.fontFamily,
      this.colorHex,
      this.backgroundColorHex,
      this.fontSize,
      this.fontWeight,
      this.fontStyle,
      this.letterSpacing,
      this.wordSpacing,
      this.textBaseline,
      this.height,
      this.leadingDistribution,
      this.textDecoration});

  factory _$TextUIStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextUIStyleImplFromJson(json);

  @override
  final String? fontFamily;
  @override
  final String? colorHex;
  @override
  final String? backgroundColorHex;
  @override
  final double? fontSize;
  @override
  final FontWeightUIStyle? fontWeight;
  @override
  final FontStyle? fontStyle;
  @override
  final double? letterSpacing;
  @override
  final double? wordSpacing;
  @override
  final TextBaseline? textBaseline;
  @override
  final double? height;
  @override
  final TextLeadingDistribution? leadingDistribution;
  @override
  final TextDecorationUIStyle? textDecoration;

  @override
  String toString() {
    return 'TextUIStyle(fontFamily: $fontFamily, colorHex: $colorHex, backgroundColorHex: $backgroundColorHex, fontSize: $fontSize, fontWeight: $fontWeight, fontStyle: $fontStyle, letterSpacing: $letterSpacing, wordSpacing: $wordSpacing, textBaseline: $textBaseline, height: $height, leadingDistribution: $leadingDistribution, textDecoration: $textDecoration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextUIStyleImpl &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            (identical(other.colorHex, colorHex) ||
                other.colorHex == colorHex) &&
            (identical(other.backgroundColorHex, backgroundColorHex) ||
                other.backgroundColorHex == backgroundColorHex) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.fontWeight, fontWeight) ||
                other.fontWeight == fontWeight) &&
            (identical(other.fontStyle, fontStyle) ||
                other.fontStyle == fontStyle) &&
            (identical(other.letterSpacing, letterSpacing) ||
                other.letterSpacing == letterSpacing) &&
            (identical(other.wordSpacing, wordSpacing) ||
                other.wordSpacing == wordSpacing) &&
            (identical(other.textBaseline, textBaseline) ||
                other.textBaseline == textBaseline) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.leadingDistribution, leadingDistribution) ||
                other.leadingDistribution == leadingDistribution) &&
            (identical(other.textDecoration, textDecoration) ||
                other.textDecoration == textDecoration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fontFamily,
      colorHex,
      backgroundColorHex,
      fontSize,
      fontWeight,
      fontStyle,
      letterSpacing,
      wordSpacing,
      textBaseline,
      height,
      leadingDistribution,
      textDecoration);

  /// Create a copy of TextUIStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextUIStyleImplCopyWith<_$TextUIStyleImpl> get copyWith =>
      __$$TextUIStyleImplCopyWithImpl<_$TextUIStyleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextUIStyleImplToJson(
      this,
    );
  }
}

abstract class _TextUIStyle implements TextUIStyle {
  const factory _TextUIStyle(
      {final String? fontFamily,
      final String? colorHex,
      final String? backgroundColorHex,
      final double? fontSize,
      final FontWeightUIStyle? fontWeight,
      final FontStyle? fontStyle,
      final double? letterSpacing,
      final double? wordSpacing,
      final TextBaseline? textBaseline,
      final double? height,
      final TextLeadingDistribution? leadingDistribution,
      final TextDecorationUIStyle? textDecoration}) = _$TextUIStyleImpl;

  factory _TextUIStyle.fromJson(Map<String, dynamic> json) =
      _$TextUIStyleImpl.fromJson;

  @override
  String? get fontFamily;
  @override
  String? get colorHex;
  @override
  String? get backgroundColorHex;
  @override
  double? get fontSize;
  @override
  FontWeightUIStyle? get fontWeight;
  @override
  FontStyle? get fontStyle;
  @override
  double? get letterSpacing;
  @override
  double? get wordSpacing;
  @override
  TextBaseline? get textBaseline;
  @override
  double? get height;
  @override
  TextLeadingDistribution? get leadingDistribution;
  @override
  TextDecorationUIStyle? get textDecoration;

  /// Create a copy of TextUIStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextUIStyleImplCopyWith<_$TextUIStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
