import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pythagoras/pythagoras.dart';

part 'models.freezed.dart';

const undefined = '?';
const defaultMaxNumSize = 6;
const minComponentsCount = 3;
const maxComponentsCount = 19;

@freezed
class OperationMode with _$OperationMode {
  const factory OperationMode.specific(
    ExpressionOperation operation,
  ) = _Specific;

  const factory OperationMode.random() = _Random;
}

abstract class ComponentVM {
  List<String> get options;

  int get initialIndex;

  final key = GlobalKey();

  void updateWithIndex(int index);

  String buildString();
}

class NumSelectorVM extends ComponentVM {
  int size = 1;

  @override
  int get initialIndex => size;

  @override
  List<String> get options => List<String>.generate(
        defaultMaxNumSize,
        (index) => index == 0
            ? '?'
            : List<int>.generate(index, (i) => i).fold(
                '',
                (rex, next) => '${rex}X',
              ),
      );

  @override
  void updateWithIndex(int index) {
    size = index;
  }

  @override
  String buildString() {
    switch (size) {
      case 0:
        return '?';
      default:
        return List<int>.generate(
          size,
          (i) => i,
        ).fold(
          '',
          (res, next) => '${res}X',
        );
    }
  }
}

class OperationSelectorVM extends ComponentVM {
  OperationMode mode = const OperationMode.specific(
    ExpressionOperation.add,
  );

  @override
  int get initialIndex => mode.when(
        specific: (operation) =>
            ExpressionOperation.values.indexOf(operation) + 1,
        random: () => 0,
      );

  @override
  List<String> get options => [
        '?',
        ...List<String>.generate(
          ExpressionOperation.values.length,
          (index) => ExpressionOperation.values[index].toString(),
        ),
      ];

  @override
  void updateWithIndex(int index) {
    switch (index) {
      case 0:
        mode = const OperationMode.random();
        break;
      default:
        mode = OperationMode.specific(
          ExpressionOperation.values[index - 1],
        );
        break;
    }
  }

  @override
  String buildString() {
    return mode.when(
      specific: (operation) => operation.toString(),
      random: () => undefined,
    );
  }
}
