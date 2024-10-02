import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

export 'models/models.dart';

class MatchKeyboard extends StatelessWidget {
  final KeyboardSettings settings;
  final ValueChanged<KeyModel> onKeyPressed;

  const MatchKeyboard({
    super.key,
    required this.settings,
    required this.onKeyPressed,
  });

  @override
  Widget build(BuildContext context) {
    final keySize = settings.keySize.toWidth;
    final keysOffset = settings.keysOffset.toWidth;
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
