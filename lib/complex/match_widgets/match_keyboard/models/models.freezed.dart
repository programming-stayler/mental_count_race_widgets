// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KeyModel {
  String get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) symbol,
    required TResult Function(String text, KeyAction action) action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? symbol,
    TResult? Function(String text, KeyAction action)? action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? symbol,
    TResult Function(String text, KeyAction action)? action,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Symbol value) symbol,
    required TResult Function(_Action value) action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Symbol value)? symbol,
    TResult? Function(_Action value)? action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Symbol value)? symbol,
    TResult Function(_Action value)? action,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of KeyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyModelCopyWith<KeyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyModelCopyWith<$Res> {
  factory $KeyModelCopyWith(KeyModel value, $Res Function(KeyModel) then) =
      _$KeyModelCopyWithImpl<$Res, KeyModel>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$KeyModelCopyWithImpl<$Res, $Val extends KeyModel>
    implements $KeyModelCopyWith<$Res> {
  _$KeyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymbolImplCopyWith<$Res> implements $KeyModelCopyWith<$Res> {
  factory _$$SymbolImplCopyWith(
          _$SymbolImpl value, $Res Function(_$SymbolImpl) then) =
      __$$SymbolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SymbolImplCopyWithImpl<$Res>
    extends _$KeyModelCopyWithImpl<$Res, _$SymbolImpl>
    implements _$$SymbolImplCopyWith<$Res> {
  __$$SymbolImplCopyWithImpl(
      _$SymbolImpl _value, $Res Function(_$SymbolImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SymbolImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SymbolImpl implements _Symbol {
  const _$SymbolImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'KeyModel.symbol(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymbolImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of KeyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymbolImplCopyWith<_$SymbolImpl> get copyWith =>
      __$$SymbolImplCopyWithImpl<_$SymbolImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) symbol,
    required TResult Function(String text, KeyAction action) action,
  }) {
    return symbol(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? symbol,
    TResult? Function(String text, KeyAction action)? action,
  }) {
    return symbol?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? symbol,
    TResult Function(String text, KeyAction action)? action,
    required TResult orElse(),
  }) {
    if (symbol != null) {
      return symbol(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Symbol value) symbol,
    required TResult Function(_Action value) action,
  }) {
    return symbol(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Symbol value)? symbol,
    TResult? Function(_Action value)? action,
  }) {
    return symbol?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Symbol value)? symbol,
    TResult Function(_Action value)? action,
    required TResult orElse(),
  }) {
    if (symbol != null) {
      return symbol(this);
    }
    return orElse();
  }
}

abstract class _Symbol implements KeyModel {
  const factory _Symbol(final String text) = _$SymbolImpl;

  @override
  String get text;

  /// Create a copy of KeyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymbolImplCopyWith<_$SymbolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionImplCopyWith<$Res> implements $KeyModelCopyWith<$Res> {
  factory _$$ActionImplCopyWith(
          _$ActionImpl value, $Res Function(_$ActionImpl) then) =
      __$$ActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, KeyAction action});
}

/// @nodoc
class __$$ActionImplCopyWithImpl<$Res>
    extends _$KeyModelCopyWithImpl<$Res, _$ActionImpl>
    implements _$$ActionImplCopyWith<$Res> {
  __$$ActionImplCopyWithImpl(
      _$ActionImpl _value, $Res Function(_$ActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? action = null,
  }) {
    return _then(_$ActionImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as KeyAction,
    ));
  }
}

/// @nodoc

class _$ActionImpl implements _Action {
  const _$ActionImpl(this.text, this.action);

  @override
  final String text;
  @override
  final KeyAction action;

  @override
  String toString() {
    return 'KeyModel.action(text: $text, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, action);

  /// Create a copy of KeyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionImplCopyWith<_$ActionImpl> get copyWith =>
      __$$ActionImplCopyWithImpl<_$ActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) symbol,
    required TResult Function(String text, KeyAction action) action,
  }) {
    return action(text, this.action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? symbol,
    TResult? Function(String text, KeyAction action)? action,
  }) {
    return action?.call(text, this.action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? symbol,
    TResult Function(String text, KeyAction action)? action,
    required TResult orElse(),
  }) {
    if (action != null) {
      return action(text, this.action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Symbol value) symbol,
    required TResult Function(_Action value) action,
  }) {
    return action(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Symbol value)? symbol,
    TResult? Function(_Action value)? action,
  }) {
    return action?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Symbol value)? symbol,
    TResult Function(_Action value)? action,
    required TResult orElse(),
  }) {
    if (action != null) {
      return action(this);
    }
    return orElse();
  }
}

abstract class _Action implements KeyModel {
  const factory _Action(final String text, final KeyAction action) =
      _$ActionImpl;

  @override
  String get text;
  KeyAction get action;

  /// Create a copy of KeyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActionImplCopyWith<_$ActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchSettings _$MatchSettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$MatchSettings {
  bool get showResultInRuntime => throw _privateConstructorUsedError;
  bool get showOpponentsResultInRuntime => throw _privateConstructorUsedError;

  /// Serializes this MatchSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchSettingsCopyWith<MatchSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchSettingsCopyWith<$Res> {
  factory $MatchSettingsCopyWith(
          MatchSettings value, $Res Function(MatchSettings) then) =
      _$MatchSettingsCopyWithImpl<$Res, MatchSettings>;
  @useResult
  $Res call({bool showResultInRuntime, bool showOpponentsResultInRuntime});
}

/// @nodoc
class _$MatchSettingsCopyWithImpl<$Res, $Val extends MatchSettings>
    implements $MatchSettingsCopyWith<$Res> {
  _$MatchSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showResultInRuntime = null,
    Object? showOpponentsResultInRuntime = null,
  }) {
    return _then(_value.copyWith(
      showResultInRuntime: null == showResultInRuntime
          ? _value.showResultInRuntime
          : showResultInRuntime // ignore: cast_nullable_to_non_nullable
              as bool,
      showOpponentsResultInRuntime: null == showOpponentsResultInRuntime
          ? _value.showOpponentsResultInRuntime
          : showOpponentsResultInRuntime // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsImplCopyWith<$Res>
    implements $MatchSettingsCopyWith<$Res> {
  factory _$$SettingsImplCopyWith(
          _$SettingsImpl value, $Res Function(_$SettingsImpl) then) =
      __$$SettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showResultInRuntime, bool showOpponentsResultInRuntime});
}

/// @nodoc
class __$$SettingsImplCopyWithImpl<$Res>
    extends _$MatchSettingsCopyWithImpl<$Res, _$SettingsImpl>
    implements _$$SettingsImplCopyWith<$Res> {
  __$$SettingsImplCopyWithImpl(
      _$SettingsImpl _value, $Res Function(_$SettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showResultInRuntime = null,
    Object? showOpponentsResultInRuntime = null,
  }) {
    return _then(_$SettingsImpl(
      showResultInRuntime: null == showResultInRuntime
          ? _value.showResultInRuntime
          : showResultInRuntime // ignore: cast_nullable_to_non_nullable
              as bool,
      showOpponentsResultInRuntime: null == showOpponentsResultInRuntime
          ? _value.showOpponentsResultInRuntime
          : showOpponentsResultInRuntime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsImpl implements _Settings {
  const _$SettingsImpl(
      {this.showResultInRuntime = true,
      this.showOpponentsResultInRuntime = true});

  factory _$SettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsImplFromJson(json);

  @override
  @JsonKey()
  final bool showResultInRuntime;
  @override
  @JsonKey()
  final bool showOpponentsResultInRuntime;

  @override
  String toString() {
    return 'MatchSettings(showResultInRuntime: $showResultInRuntime, showOpponentsResultInRuntime: $showOpponentsResultInRuntime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
            (identical(other.showResultInRuntime, showResultInRuntime) ||
                other.showResultInRuntime == showResultInRuntime) &&
            (identical(other.showOpponentsResultInRuntime,
                    showOpponentsResultInRuntime) ||
                other.showOpponentsResultInRuntime ==
                    showOpponentsResultInRuntime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, showResultInRuntime, showOpponentsResultInRuntime);

  /// Create a copy of MatchSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      __$$SettingsImplCopyWithImpl<_$SettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsImplToJson(
      this,
    );
  }
}

abstract class _Settings implements MatchSettings {
  const factory _Settings(
      {final bool showResultInRuntime,
      final bool showOpponentsResultInRuntime}) = _$SettingsImpl;

  factory _Settings.fromJson(Map<String, dynamic> json) =
      _$SettingsImpl.fromJson;

  @override
  bool get showResultInRuntime;
  @override
  bool get showOpponentsResultInRuntime;

  /// Create a copy of MatchSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyboardSettings _$KeyboardSettingsFromJson(Map<String, dynamic> json) {
  return _KeyboardSettings.fromJson(json);
}

/// @nodoc
mixin _$KeyboardSettings {
  double get keySize => throw _privateConstructorUsedError;
  double get keysOffset => throw _privateConstructorUsedError;

  /// Serializes this KeyboardSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyboardSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyboardSettingsCopyWith<KeyboardSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardSettingsCopyWith<$Res> {
  factory $KeyboardSettingsCopyWith(
          KeyboardSettings value, $Res Function(KeyboardSettings) then) =
      _$KeyboardSettingsCopyWithImpl<$Res, KeyboardSettings>;
  @useResult
  $Res call({double keySize, double keysOffset});
}

/// @nodoc
class _$KeyboardSettingsCopyWithImpl<$Res, $Val extends KeyboardSettings>
    implements $KeyboardSettingsCopyWith<$Res> {
  _$KeyboardSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyboardSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keySize = null,
    Object? keysOffset = null,
  }) {
    return _then(_value.copyWith(
      keySize: null == keySize
          ? _value.keySize
          : keySize // ignore: cast_nullable_to_non_nullable
              as double,
      keysOffset: null == keysOffset
          ? _value.keysOffset
          : keysOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyboardSettingsImplCopyWith<$Res>
    implements $KeyboardSettingsCopyWith<$Res> {
  factory _$$KeyboardSettingsImplCopyWith(_$KeyboardSettingsImpl value,
          $Res Function(_$KeyboardSettingsImpl) then) =
      __$$KeyboardSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double keySize, double keysOffset});
}

/// @nodoc
class __$$KeyboardSettingsImplCopyWithImpl<$Res>
    extends _$KeyboardSettingsCopyWithImpl<$Res, _$KeyboardSettingsImpl>
    implements _$$KeyboardSettingsImplCopyWith<$Res> {
  __$$KeyboardSettingsImplCopyWithImpl(_$KeyboardSettingsImpl _value,
      $Res Function(_$KeyboardSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyboardSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keySize = null,
    Object? keysOffset = null,
  }) {
    return _then(_$KeyboardSettingsImpl(
      keySize: null == keySize
          ? _value.keySize
          : keySize // ignore: cast_nullable_to_non_nullable
              as double,
      keysOffset: null == keysOffset
          ? _value.keysOffset
          : keysOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardSettingsImpl implements _KeyboardSettings {
  const _$KeyboardSettingsImpl(
      {this.keySize = cKeyMinSize, this.keysOffset = cKeysMinOffset});

  factory _$KeyboardSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyboardSettingsImplFromJson(json);

  @override
  @JsonKey()
  final double keySize;
  @override
  @JsonKey()
  final double keysOffset;

  @override
  String toString() {
    return 'KeyboardSettings(keySize: $keySize, keysOffset: $keysOffset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyboardSettingsImpl &&
            (identical(other.keySize, keySize) || other.keySize == keySize) &&
            (identical(other.keysOffset, keysOffset) ||
                other.keysOffset == keysOffset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keySize, keysOffset);

  /// Create a copy of KeyboardSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardSettingsImplCopyWith<_$KeyboardSettingsImpl> get copyWith =>
      __$$KeyboardSettingsImplCopyWithImpl<_$KeyboardSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardSettingsImplToJson(
      this,
    );
  }
}

abstract class _KeyboardSettings implements KeyboardSettings {
  const factory _KeyboardSettings(
      {final double keySize, final double keysOffset}) = _$KeyboardSettingsImpl;

  factory _KeyboardSettings.fromJson(Map<String, dynamic> json) =
      _$KeyboardSettingsImpl.fromJson;

  @override
  double get keySize;
  @override
  double get keysOffset;

  /// Create a copy of KeyboardSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyboardSettingsImplCopyWith<_$KeyboardSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KeyboardMode {
  KeyboardSettings get settings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed)
        key,
    required TResult Function(
            KeyboardSettings settings,
            String answer,
            ExpressionViewerController? controller,
            ValueChanged<String> onAnswerChanged,
            dynamic Function(ExpressionModel, int)? onAnswerGiven)
        answer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed)?
        key,
    TResult? Function(
            KeyboardSettings settings,
            String answer,
            ExpressionViewerController? controller,
            ValueChanged<String> onAnswerChanged,
            dynamic Function(ExpressionModel, int)? onAnswerGiven)?
        answer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed)?
        key,
    TResult Function(
            KeyboardSettings settings,
            String answer,
            ExpressionViewerController? controller,
            ValueChanged<String> onAnswerChanged,
            dynamic Function(ExpressionModel, int)? onAnswerGiven)?
        answer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Key value) key,
    required TResult Function(_Answer value) answer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Key value)? key,
    TResult? Function(_Answer value)? answer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Key value)? key,
    TResult Function(_Answer value)? answer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of KeyboardMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyboardModeCopyWith<KeyboardMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardModeCopyWith<$Res> {
  factory $KeyboardModeCopyWith(
          KeyboardMode value, $Res Function(KeyboardMode) then) =
      _$KeyboardModeCopyWithImpl<$Res, KeyboardMode>;
  @useResult
  $Res call({KeyboardSettings settings});

  $KeyboardSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$KeyboardModeCopyWithImpl<$Res, $Val extends KeyboardMode>
    implements $KeyboardModeCopyWith<$Res> {
  _$KeyboardModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyboardMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as KeyboardSettings,
    ) as $Val);
  }

  /// Create a copy of KeyboardMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardSettingsCopyWith<$Res> get settings {
    return $KeyboardSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KeyImplCopyWith<$Res> implements $KeyboardModeCopyWith<$Res> {
  factory _$$KeyImplCopyWith(_$KeyImpl value, $Res Function(_$KeyImpl) then) =
      __$$KeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed});

  @override
  $KeyboardSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$KeyImplCopyWithImpl<$Res>
    extends _$KeyboardModeCopyWithImpl<$Res, _$KeyImpl>
    implements _$$KeyImplCopyWith<$Res> {
  __$$KeyImplCopyWithImpl(_$KeyImpl _value, $Res Function(_$KeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyboardMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? onKeyPressed = null,
  }) {
    return _then(_$KeyImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as KeyboardSettings,
      onKeyPressed: null == onKeyPressed
          ? _value.onKeyPressed
          : onKeyPressed // ignore: cast_nullable_to_non_nullable
              as ValueChanged<KeyModel>,
    ));
  }
}

/// @nodoc

class _$KeyImpl implements _Key {
  const _$KeyImpl({required this.settings, required this.onKeyPressed});

  @override
  final KeyboardSettings settings;
  @override
  final ValueChanged<KeyModel> onKeyPressed;

  @override
  String toString() {
    return 'KeyboardMode.key(settings: $settings, onKeyPressed: $onKeyPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.onKeyPressed, onKeyPressed) ||
                other.onKeyPressed == onKeyPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings, onKeyPressed);

  /// Create a copy of KeyboardMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyImplCopyWith<_$KeyImpl> get copyWith =>
      __$$KeyImplCopyWithImpl<_$KeyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed)
        key,
    required TResult Function(
            KeyboardSettings settings,
            String answer,
            ExpressionViewerController? controller,
            ValueChanged<String> onAnswerChanged,
            dynamic Function(ExpressionModel, int)? onAnswerGiven)
        answer,
  }) {
    return key(settings, onKeyPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed)?
        key,
    TResult? Function(
            KeyboardSettings settings,
            String answer,
            ExpressionViewerController? controller,
            ValueChanged<String> onAnswerChanged,
            dynamic Function(ExpressionModel, int)? onAnswerGiven)?
        answer,
  }) {
    return key?.call(settings, onKeyPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed)?
        key,
    TResult Function(
            KeyboardSettings settings,
            String answer,
            ExpressionViewerController? controller,
            ValueChanged<String> onAnswerChanged,
            dynamic Function(ExpressionModel, int)? onAnswerGiven)?
        answer,
    required TResult orElse(),
  }) {
    if (key != null) {
      return key(settings, onKeyPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Key value) key,
    required TResult Function(_Answer value) answer,
  }) {
    return key(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Key value)? key,
    TResult? Function(_Answer value)? answer,
  }) {
    return key?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Key value)? key,
    TResult Function(_Answer value)? answer,
    required TResult orElse(),
  }) {
    if (key != null) {
      return key(this);
    }
    return orElse();
  }
}

abstract class _Key implements KeyboardMode {
  const factory _Key(
      {required final KeyboardSettings settings,
      required final ValueChanged<KeyModel> onKeyPressed}) = _$KeyImpl;

  @override
  KeyboardSettings get settings;
  ValueChanged<KeyModel> get onKeyPressed;

  /// Create a copy of KeyboardMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyImplCopyWith<_$KeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res>
    implements $KeyboardModeCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KeyboardSettings settings,
      String answer,
      ExpressionViewerController? controller,
      ValueChanged<String> onAnswerChanged,
      dynamic Function(ExpressionModel, int)? onAnswerGiven});

  @override
  $KeyboardSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$KeyboardModeCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyboardMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? answer = null,
    Object? controller = freezed,
    Object? onAnswerChanged = null,
    Object? onAnswerGiven = freezed,
  }) {
    return _then(_$AnswerImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as KeyboardSettings,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as ExpressionViewerController?,
      onAnswerChanged: null == onAnswerChanged
          ? _value.onAnswerChanged
          : onAnswerChanged // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
      onAnswerGiven: freezed == onAnswerGiven
          ? _value.onAnswerGiven
          : onAnswerGiven // ignore: cast_nullable_to_non_nullable
              as dynamic Function(ExpressionModel, int)?,
    ));
  }
}

/// @nodoc

class _$AnswerImpl implements _Answer {
  const _$AnswerImpl(
      {required this.settings,
      required this.answer,
      this.controller,
      required this.onAnswerChanged,
      this.onAnswerGiven});

  @override
  final KeyboardSettings settings;
  @override
  final String answer;
  @override
  final ExpressionViewerController? controller;
  @override
  final ValueChanged<String> onAnswerChanged;
  @override
  final dynamic Function(ExpressionModel, int)? onAnswerGiven;

  @override
  String toString() {
    return 'KeyboardMode.answer(settings: $settings, answer: $answer, controller: $controller, onAnswerChanged: $onAnswerChanged, onAnswerGiven: $onAnswerGiven)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.onAnswerChanged, onAnswerChanged) ||
                other.onAnswerChanged == onAnswerChanged) &&
            (identical(other.onAnswerGiven, onAnswerGiven) ||
                other.onAnswerGiven == onAnswerGiven));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings, answer, controller,
      onAnswerChanged, onAnswerGiven);

  /// Create a copy of KeyboardMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed)
        key,
    required TResult Function(
            KeyboardSettings settings,
            String answer,
            ExpressionViewerController? controller,
            ValueChanged<String> onAnswerChanged,
            dynamic Function(ExpressionModel, int)? onAnswerGiven)
        answer,
  }) {
    return answer(
        settings, this.answer, controller, onAnswerChanged, onAnswerGiven);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed)?
        key,
    TResult? Function(
            KeyboardSettings settings,
            String answer,
            ExpressionViewerController? controller,
            ValueChanged<String> onAnswerChanged,
            dynamic Function(ExpressionModel, int)? onAnswerGiven)?
        answer,
  }) {
    return answer?.call(
        settings, this.answer, controller, onAnswerChanged, onAnswerGiven);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KeyboardSettings settings, ValueChanged<KeyModel> onKeyPressed)?
        key,
    TResult Function(
            KeyboardSettings settings,
            String answer,
            ExpressionViewerController? controller,
            ValueChanged<String> onAnswerChanged,
            dynamic Function(ExpressionModel, int)? onAnswerGiven)?
        answer,
    required TResult orElse(),
  }) {
    if (answer != null) {
      return answer(
          settings, this.answer, controller, onAnswerChanged, onAnswerGiven);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Key value) key,
    required TResult Function(_Answer value) answer,
  }) {
    return answer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Key value)? key,
    TResult? Function(_Answer value)? answer,
  }) {
    return answer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Key value)? key,
    TResult Function(_Answer value)? answer,
    required TResult orElse(),
  }) {
    if (answer != null) {
      return answer(this);
    }
    return orElse();
  }
}

abstract class _Answer implements KeyboardMode {
  const factory _Answer(
          {required final KeyboardSettings settings,
          required final String answer,
          final ExpressionViewerController? controller,
          required final ValueChanged<String> onAnswerChanged,
          final dynamic Function(ExpressionModel, int)? onAnswerGiven}) =
      _$AnswerImpl;

  @override
  KeyboardSettings get settings;
  String get answer;
  ExpressionViewerController? get controller;
  ValueChanged<String> get onAnswerChanged;
  dynamic Function(ExpressionModel, int)? get onAnswerGiven;

  /// Create a copy of KeyboardMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
