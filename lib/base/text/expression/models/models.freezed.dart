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
mixin _$ExpressionTextModel {
  Color? get color => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string, Color? color) fake,
    required TResult Function(ExpressionModel expression, Color? color)
        expression,
    required TResult Function(ExpressionAnswer answer, Color? color)
        expressionAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String string, Color? color)? fake,
    TResult? Function(ExpressionModel expression, Color? color)? expression,
    TResult? Function(ExpressionAnswer answer, Color? color)? expressionAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string, Color? color)? fake,
    TResult Function(ExpressionModel expression, Color? color)? expression,
    TResult Function(ExpressionAnswer answer, Color? color)? expressionAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fake value) fake,
    required TResult Function(_Expression value) expression,
    required TResult Function(_ExpressionAnswer value) expressionAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fake value)? fake,
    TResult? Function(_Expression value)? expression,
    TResult? Function(_ExpressionAnswer value)? expressionAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fake value)? fake,
    TResult Function(_Expression value)? expression,
    TResult Function(_ExpressionAnswer value)? expressionAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpressionTextModelCopyWith<ExpressionTextModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpressionTextModelCopyWith<$Res> {
  factory $ExpressionTextModelCopyWith(
          ExpressionTextModel value, $Res Function(ExpressionTextModel) then) =
      _$ExpressionTextModelCopyWithImpl<$Res, ExpressionTextModel>;
  @useResult
  $Res call({Color? color});
}

/// @nodoc
class _$ExpressionTextModelCopyWithImpl<$Res, $Val extends ExpressionTextModel>
    implements $ExpressionTextModelCopyWith<$Res> {
  _$ExpressionTextModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FakeImplCopyWith<$Res>
    implements $ExpressionTextModelCopyWith<$Res> {
  factory _$$FakeImplCopyWith(
          _$FakeImpl value, $Res Function(_$FakeImpl) then) =
      __$$FakeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String string, Color? color});
}

/// @nodoc
class __$$FakeImplCopyWithImpl<$Res>
    extends _$ExpressionTextModelCopyWithImpl<$Res, _$FakeImpl>
    implements _$$FakeImplCopyWith<$Res> {
  __$$FakeImplCopyWithImpl(_$FakeImpl _value, $Res Function(_$FakeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = null,
    Object? color = freezed,
  }) {
    return _then(_$FakeImpl(
      string: null == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$FakeImpl implements _Fake {
  const _$FakeImpl({required this.string, this.color});

  @override
  final String string;
  @override
  final Color? color;

  @override
  String toString() {
    return 'ExpressionTextModel.fake(string: $string, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakeImpl &&
            (identical(other.string, string) || other.string == string) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, string, color);

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FakeImplCopyWith<_$FakeImpl> get copyWith =>
      __$$FakeImplCopyWithImpl<_$FakeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string, Color? color) fake,
    required TResult Function(ExpressionModel expression, Color? color)
        expression,
    required TResult Function(ExpressionAnswer answer, Color? color)
        expressionAnswer,
  }) {
    return fake(string, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String string, Color? color)? fake,
    TResult? Function(ExpressionModel expression, Color? color)? expression,
    TResult? Function(ExpressionAnswer answer, Color? color)? expressionAnswer,
  }) {
    return fake?.call(string, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string, Color? color)? fake,
    TResult Function(ExpressionModel expression, Color? color)? expression,
    TResult Function(ExpressionAnswer answer, Color? color)? expressionAnswer,
    required TResult orElse(),
  }) {
    if (fake != null) {
      return fake(string, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fake value) fake,
    required TResult Function(_Expression value) expression,
    required TResult Function(_ExpressionAnswer value) expressionAnswer,
  }) {
    return fake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fake value)? fake,
    TResult? Function(_Expression value)? expression,
    TResult? Function(_ExpressionAnswer value)? expressionAnswer,
  }) {
    return fake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fake value)? fake,
    TResult Function(_Expression value)? expression,
    TResult Function(_ExpressionAnswer value)? expressionAnswer,
    required TResult orElse(),
  }) {
    if (fake != null) {
      return fake(this);
    }
    return orElse();
  }
}

abstract class _Fake implements ExpressionTextModel {
  const factory _Fake({required final String string, final Color? color}) =
      _$FakeImpl;

  String get string;
  @override
  Color? get color;

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FakeImplCopyWith<_$FakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpressionImplCopyWith<$Res>
    implements $ExpressionTextModelCopyWith<$Res> {
  factory _$$ExpressionImplCopyWith(
          _$ExpressionImpl value, $Res Function(_$ExpressionImpl) then) =
      __$$ExpressionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpressionModel expression, Color? color});
}

/// @nodoc
class __$$ExpressionImplCopyWithImpl<$Res>
    extends _$ExpressionTextModelCopyWithImpl<$Res, _$ExpressionImpl>
    implements _$$ExpressionImplCopyWith<$Res> {
  __$$ExpressionImplCopyWithImpl(
      _$ExpressionImpl _value, $Res Function(_$ExpressionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expression = null,
    Object? color = freezed,
  }) {
    return _then(_$ExpressionImpl(
      expression: null == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as ExpressionModel,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$ExpressionImpl implements _Expression {
  const _$ExpressionImpl({required this.expression, this.color});

  @override
  final ExpressionModel expression;
  @override
  final Color? color;

  @override
  String toString() {
    return 'ExpressionTextModel.expression(expression: $expression, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpressionImpl &&
            (identical(other.expression, expression) ||
                other.expression == expression) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expression, color);

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpressionImplCopyWith<_$ExpressionImpl> get copyWith =>
      __$$ExpressionImplCopyWithImpl<_$ExpressionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string, Color? color) fake,
    required TResult Function(ExpressionModel expression, Color? color)
        expression,
    required TResult Function(ExpressionAnswer answer, Color? color)
        expressionAnswer,
  }) {
    return expression(this.expression, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String string, Color? color)? fake,
    TResult? Function(ExpressionModel expression, Color? color)? expression,
    TResult? Function(ExpressionAnswer answer, Color? color)? expressionAnswer,
  }) {
    return expression?.call(this.expression, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string, Color? color)? fake,
    TResult Function(ExpressionModel expression, Color? color)? expression,
    TResult Function(ExpressionAnswer answer, Color? color)? expressionAnswer,
    required TResult orElse(),
  }) {
    if (expression != null) {
      return expression(this.expression, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fake value) fake,
    required TResult Function(_Expression value) expression,
    required TResult Function(_ExpressionAnswer value) expressionAnswer,
  }) {
    return expression(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fake value)? fake,
    TResult? Function(_Expression value)? expression,
    TResult? Function(_ExpressionAnswer value)? expressionAnswer,
  }) {
    return expression?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fake value)? fake,
    TResult Function(_Expression value)? expression,
    TResult Function(_ExpressionAnswer value)? expressionAnswer,
    required TResult orElse(),
  }) {
    if (expression != null) {
      return expression(this);
    }
    return orElse();
  }
}

abstract class _Expression implements ExpressionTextModel {
  const factory _Expression(
      {required final ExpressionModel expression,
      final Color? color}) = _$ExpressionImpl;

  ExpressionModel get expression;
  @override
  Color? get color;

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpressionImplCopyWith<_$ExpressionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpressionAnswerImplCopyWith<$Res>
    implements $ExpressionTextModelCopyWith<$Res> {
  factory _$$ExpressionAnswerImplCopyWith(_$ExpressionAnswerImpl value,
          $Res Function(_$ExpressionAnswerImpl) then) =
      __$$ExpressionAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpressionAnswer answer, Color? color});

  $ExpressionAnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$$ExpressionAnswerImplCopyWithImpl<$Res>
    extends _$ExpressionTextModelCopyWithImpl<$Res, _$ExpressionAnswerImpl>
    implements _$$ExpressionAnswerImplCopyWith<$Res> {
  __$$ExpressionAnswerImplCopyWithImpl(_$ExpressionAnswerImpl _value,
      $Res Function(_$ExpressionAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? color = freezed,
  }) {
    return _then(_$ExpressionAnswerImpl(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as ExpressionAnswer,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpressionAnswerCopyWith<$Res> get answer {
    return $ExpressionAnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc

class _$ExpressionAnswerImpl implements _ExpressionAnswer {
  const _$ExpressionAnswerImpl({required this.answer, this.color});

  @override
  final ExpressionAnswer answer;
  @override
  final Color? color;

  @override
  String toString() {
    return 'ExpressionTextModel.expressionAnswer(answer: $answer, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpressionAnswerImpl &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer, color);

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpressionAnswerImplCopyWith<_$ExpressionAnswerImpl> get copyWith =>
      __$$ExpressionAnswerImplCopyWithImpl<_$ExpressionAnswerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string, Color? color) fake,
    required TResult Function(ExpressionModel expression, Color? color)
        expression,
    required TResult Function(ExpressionAnswer answer, Color? color)
        expressionAnswer,
  }) {
    return expressionAnswer(answer, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String string, Color? color)? fake,
    TResult? Function(ExpressionModel expression, Color? color)? expression,
    TResult? Function(ExpressionAnswer answer, Color? color)? expressionAnswer,
  }) {
    return expressionAnswer?.call(answer, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string, Color? color)? fake,
    TResult Function(ExpressionModel expression, Color? color)? expression,
    TResult Function(ExpressionAnswer answer, Color? color)? expressionAnswer,
    required TResult orElse(),
  }) {
    if (expressionAnswer != null) {
      return expressionAnswer(answer, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fake value) fake,
    required TResult Function(_Expression value) expression,
    required TResult Function(_ExpressionAnswer value) expressionAnswer,
  }) {
    return expressionAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fake value)? fake,
    TResult? Function(_Expression value)? expression,
    TResult? Function(_ExpressionAnswer value)? expressionAnswer,
  }) {
    return expressionAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fake value)? fake,
    TResult Function(_Expression value)? expression,
    TResult Function(_ExpressionAnswer value)? expressionAnswer,
    required TResult orElse(),
  }) {
    if (expressionAnswer != null) {
      return expressionAnswer(this);
    }
    return orElse();
  }
}

abstract class _ExpressionAnswer implements ExpressionTextModel {
  const factory _ExpressionAnswer(
      {required final ExpressionAnswer answer,
      final Color? color}) = _$ExpressionAnswerImpl;

  ExpressionAnswer get answer;
  @override
  Color? get color;

  /// Create a copy of ExpressionTextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpressionAnswerImplCopyWith<_$ExpressionAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
