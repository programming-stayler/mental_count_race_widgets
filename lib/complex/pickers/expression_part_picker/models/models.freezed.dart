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
mixin _$OperationMode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpressionOperation operation) specific,
    required TResult Function() random,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpressionOperation operation)? specific,
    TResult? Function()? random,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpressionOperation operation)? specific,
    TResult Function()? random,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Specific value) specific,
    required TResult Function(_Random value) random,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Specific value)? specific,
    TResult? Function(_Random value)? random,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Specific value)? specific,
    TResult Function(_Random value)? random,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationModeCopyWith<$Res> {
  factory $OperationModeCopyWith(
          OperationMode value, $Res Function(OperationMode) then) =
      _$OperationModeCopyWithImpl<$Res, OperationMode>;
}

/// @nodoc
class _$OperationModeCopyWithImpl<$Res, $Val extends OperationMode>
    implements $OperationModeCopyWith<$Res> {
  _$OperationModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OperationMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SpecificImplCopyWith<$Res> {
  factory _$$SpecificImplCopyWith(
          _$SpecificImpl value, $Res Function(_$SpecificImpl) then) =
      __$$SpecificImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpressionOperation operation});
}

/// @nodoc
class __$$SpecificImplCopyWithImpl<$Res>
    extends _$OperationModeCopyWithImpl<$Res, _$SpecificImpl>
    implements _$$SpecificImplCopyWith<$Res> {
  __$$SpecificImplCopyWithImpl(
      _$SpecificImpl _value, $Res Function(_$SpecificImpl) _then)
      : super(_value, _then);

  /// Create a copy of OperationMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
  }) {
    return _then(_$SpecificImpl(
      null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as ExpressionOperation,
    ));
  }
}

/// @nodoc

class _$SpecificImpl implements _Specific {
  const _$SpecificImpl(this.operation);

  @override
  final ExpressionOperation operation;

  @override
  String toString() {
    return 'OperationMode.specific(operation: $operation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecificImpl &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operation);

  /// Create a copy of OperationMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecificImplCopyWith<_$SpecificImpl> get copyWith =>
      __$$SpecificImplCopyWithImpl<_$SpecificImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpressionOperation operation) specific,
    required TResult Function() random,
  }) {
    return specific(operation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpressionOperation operation)? specific,
    TResult? Function()? random,
  }) {
    return specific?.call(operation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpressionOperation operation)? specific,
    TResult Function()? random,
    required TResult orElse(),
  }) {
    if (specific != null) {
      return specific(operation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Specific value) specific,
    required TResult Function(_Random value) random,
  }) {
    return specific(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Specific value)? specific,
    TResult? Function(_Random value)? random,
  }) {
    return specific?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Specific value)? specific,
    TResult Function(_Random value)? random,
    required TResult orElse(),
  }) {
    if (specific != null) {
      return specific(this);
    }
    return orElse();
  }
}

abstract class _Specific implements OperationMode {
  const factory _Specific(final ExpressionOperation operation) = _$SpecificImpl;

  ExpressionOperation get operation;

  /// Create a copy of OperationMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecificImplCopyWith<_$SpecificImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RandomImplCopyWith<$Res> {
  factory _$$RandomImplCopyWith(
          _$RandomImpl value, $Res Function(_$RandomImpl) then) =
      __$$RandomImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RandomImplCopyWithImpl<$Res>
    extends _$OperationModeCopyWithImpl<$Res, _$RandomImpl>
    implements _$$RandomImplCopyWith<$Res> {
  __$$RandomImplCopyWithImpl(
      _$RandomImpl _value, $Res Function(_$RandomImpl) _then)
      : super(_value, _then);

  /// Create a copy of OperationMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RandomImpl implements _Random {
  const _$RandomImpl();

  @override
  String toString() {
    return 'OperationMode.random()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RandomImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpressionOperation operation) specific,
    required TResult Function() random,
  }) {
    return random();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpressionOperation operation)? specific,
    TResult? Function()? random,
  }) {
    return random?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpressionOperation operation)? specific,
    TResult Function()? random,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Specific value) specific,
    required TResult Function(_Random value) random,
  }) {
    return random(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Specific value)? specific,
    TResult? Function(_Random value)? random,
  }) {
    return random?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Specific value)? specific,
    TResult Function(_Random value)? random,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random(this);
    }
    return orElse();
  }
}

abstract class _Random implements OperationMode {
  const factory _Random() = _$RandomImpl;
}
