import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

export 'models/models.dart';

class MatchKeyboard extends StatefulWidget {
  final KeyboardMode mode;

  const MatchKeyboard({
    super.key,
    required this.mode,
  });

  @override
  State<MatchKeyboard> createState() => _MatchKeyboardState();
}

class _MatchKeyboardState extends State<MatchKeyboard> {
  int mistakes = 0;

  @override
  Widget build(BuildContext context) {
    final keySize = widget.mode.settings.keySize.toWidth;
    final keysOffset = widget.mode.settings.keysOffset.toWidth;
    final symbolsChildren = <Widget>[];
    for (var i = 0; i < rowsCount; i++) {
      final rowChildren = <Widget>[];
      for (var j = 0; j < rowKeysCount; j++) {
        final text = '${(i * rowsCount) + j + 1}';
        final key = KeyModel.symbol(text);
        rowChildren.addAll([
          SizedBox(
            width: keySize,
            height: keySize,
            child: KeyButton(
              model: key,
              onPressed: onKeyPressed,
            ),
          ),
          SizedBox(
            width: keysOffset,
          ),
        ]);
      }
      rowChildren.removeLast();
      symbolsChildren.addAll([
        Row(children: List.from(rowChildren)),
        SizedBox(height: keysOffset),
      ]);
    }
    const zeroSymbol = KeyModel.symbol('0');
    final width = keySize * 3 + keysOffset * 2;
    symbolsChildren.add(
      SizedBox(
        width: width,
        height: keySize,
        child: KeyButton(
          model: zeroSymbol,
          onPressed: onKeyPressed,
        ),
      ),
    );
    const minusAction = KeyModel.action(
      '-',
      KeyAction.minus,
    );
    const backwardAction = KeyModel.action(
      '<',
      KeyAction.backward,
    );
    final actionsChildren = <Widget>[
      Expanded(
        child: SizedBox(
          width: keySize,
          child: KeyButton(
            model: minusAction,
            onPressed: onKeyPressed,
          ),
        ),
      ),
      SizedBox(height: keysOffset),
      Expanded(
        child: SizedBox(
          width: keySize,
          child: KeyButton(
            model: backwardAction,
            onPressed: onKeyPressed,
          ),
        ),
      ),
    ];
    final rowChildren = <Widget>[
      SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: symbolsChildren,
        ),
      ),
      SizedBox(
        width: keysOffset,
      ),
      SizedBox(
        height: keySize * 4 + keysOffset * 3,
        child: Column(
          children: actionsChildren,
        ),
      ),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: rowChildren,
    );
  }

  void onKeyPressed(KeyModel key) {
    widget.mode.map(
      key: (mode) {
        mode.onKeyPressed(key);
      },
      answer: (mode) {
        key.map(
          symbol: (symbol) {
            final answerString = '${mode.answer}${symbol.text}';
            mode.onAnswerChanged(answerString);
            final controller = mode.controller;
            if (controller != null) {
              final expression = controller.currentItem;
              expression?.whenOrNull(
                expression: (expression, _) {
                  if (expression.isMistake(answerString)) {
                    mistakes += 1;
                  }
                  final answer = int.tryParse(answerString);
                  if (answer != null && expression.result == answer) {
                    mode.onAnswerGiven?.call(expression, answer, mistakes);
                    mistakes = 0;
                  }
                },
              );
            }
          },
          action: (action) {
            switch (action.action) {
              case KeyAction.backward:
                if (mode.answer.isNotEmpty) {
                  mode.onAnswerChanged(
                    mode.answer.substring(0, mode.answer.length - 1),
                  );
                }
                break;
              case KeyAction.answer:
                final controller = mode.controller;
                if (controller != null) {
                  final expression = controller.currentItem;
                  expression?.whenOrNull(
                    expression: (expression, _) {
                      if (expression.isMistake(mode.answer)) {
                        mistakes += 1;
                      }
                      final answer = int.tryParse(mode.answer);
                      if (answer != null) {
                        mode.onAnswerGiven?.call(expression, answer, mistakes);
                        mistakes = 0;
                      }
                    },
                  );
                }
                break;
              case KeyAction.minus:
                mode.onAnswerChanged(
                  '${mode.answer}${action.text}',
                );
                break;
            }
          },
        );
      },
    );
  }
}

class KeyButton extends StatelessWidget {
  final KeyModel model;
  final ValueChanged<KeyModel> onPressed;

  // final UIStyleScheme? overwrittenStyle;

  const KeyButton({
    super.key,
    required this.model,
    required this.onPressed,
    // this.overwrittenStyle,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return InkWell(
      onTap: () => onPressed(model),
      child: AppContainer.fromStyle(
        style: model.map(
          symbol: (_) => style.keyboardRegularStyle,
          action: (_) => style.keyboardActionStyle,
        ),
        child: AppText(
          model.text,
          uiStyle: style.textStyle.regularFont.buttonTitle,
        ),
      ),
    );
  }
}
