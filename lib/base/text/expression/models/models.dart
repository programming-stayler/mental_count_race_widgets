import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pythagoras/pythagoras.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

part 'models.freezed.dart';

@freezed
class ExpressionTextModel with _$ExpressionTextModel {
  const factory ExpressionTextModel.fake({
    required String string,
    Color? color,
  }) = _Fake;

  const factory ExpressionTextModel.expression({
    required ExpressionModel expression,
    Color? color,
  }) = _Expression;

  const factory ExpressionTextModel.expressionAnswer({
    required ExpressionAnswer answer,
    Color? color,
  }) = _ExpressionAnswer;
}

extension ExpressionItemModelUtils on ExpressionTextModel {
  String get title {
    return when(
      fake: (fake, color) => fake,
      expression: (expression, color) => expression.expression,
      expressionAnswer: (model, color) =>
      '${model.expression.expression} = ${model.answer}',
    );
  }
}
