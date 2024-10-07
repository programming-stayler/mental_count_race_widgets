import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras/pythagoras.dart';

part 'models.freezed.dart';
part 'models.g.dart';

const cNumberKeyboardSize = 52;
const cKeyProportion = 5;
final cKeyOffset = 16.toWidth;
const rowsCount = 3;
const rowKeysCount = 3;

@freezed
class KeyModel with _$KeyModel {
  const factory KeyModel.symbol(
    String text,
  ) = _Symbol;

  const factory KeyModel.action(
    String text,
    KeyAction action,
  ) = _Action;
}

enum KeyAction {
  minus,
  backward,
  answer,
}

enum KeyboardLayout {
  keysFromLeft,
  keysFromRight,
}

@freezed
class MatchSettings with _$MatchSettings {
  const factory MatchSettings({
    @Default(true) bool showResultInRuntime,
    @Default(true) bool showOpponentsResultInRuntime,
  }) = _Settings;

  factory MatchSettings.fromJson(Map<String, dynamic> json) =>
      _$MatchSettingsFromJson(json);
}

const cKeyMinSize = 44.0;
const cKeyMaxSize = 60.0;
const cKeysMinOffset = 8.0;
const cKeysMaxOffset = 20.0;

@freezed
class KeyboardSettings with _$KeyboardSettings {
  const factory KeyboardSettings({
    @Default(cKeyMinSize) double keySize,
    @Default(cKeysMinOffset) double keysOffset,
  }) = _KeyboardSettings;

  factory KeyboardSettings.fromJson(Map<String, dynamic> json) =>
      _$KeyboardSettingsFromJson(json);
}

@freezed
class KeyboardMode with _$KeyboardMode {
  const factory KeyboardMode.key({
    required KeyboardSettings settings,
    required ValueChanged<KeyModel> onKeyPressed,
  }) = _Key;

  const factory KeyboardMode.answer({
    required KeyboardSettings settings,
    required String answer,
    required ExpressionViewerController controller,
    required ValueChanged<String> onAnswerChanged,
    required Function(ExpressionModel, int) onAnswerGiven,
  }) = _Answer;
}