import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

export 'controller.dart';

class ExpressionBuilderWidget extends StatefulWidget {
  final ExpressionBuilderController controller;

  const ExpressionBuilderWidget({
    super.key,
    required this.controller,
  });

  @override
  State<ExpressionBuilderWidget> createState() =>
      _ExpressionBuilderWidgetState();
}

class _ExpressionBuilderWidgetState extends State<ExpressionBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    final comps = widget.controller.components;
    final children = <Widget>[];
    var i = 0;
    while (i < comps.length) {
      if (i < minComponentsCount) {
        final comp = comps[i];
        children.add(ExpressionPartPicker(vm: comp));
        i += 1;
      } else {
        final compOperation = comps[i];
        final compNum = comps[i + 1];
        children.add(
          _RemovableWrapper(
            key: ValueKey(compNum),
            index: i,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ExpressionPartPicker(vm: compOperation),
                ExpressionPartPicker(vm: compNum),
              ],
            ),
            onPressed: (index) {
              setState(() {
                widget.controller.removeComponentAtIndex(index);
              });
            },
          ),
        );
        i += 2;
      }
    }
    if (comps.length < maxComponentsCount) {
      children.add(
        AddExpressionButton(
          onPressed: () {
            setState(() {
              widget.controller.extendExpression();
            });
          },
        ),
      );
    }
    return SingleChildScrollView(
      child: Column(
        children: children,
      ),
    );
  }
}

class _RemovableWrapper extends StatelessWidget {
  final int index;
  final Widget child;
  final ValueChanged<int> onPressed;

  const _RemovableWrapper({
    super.key,
    required this.index,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return Row(
      children: [
        SizedBox(
          width: 32.toWidth,
          child: IconButton(
            onPressed: () => onPressed(index),
            icon: Icon(
              Icons.remove_circle_outline,
              color: style.negativeColorHex.color,
            ),
          ),
        ),
        Expanded(child: child),
        AppPadding.horizontalPadding32,
      ],
    );
  }
}

class AddExpressionButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddExpressionButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.add_circle_outline,
        color: style.positiveColorHex.color,
      ),
    );
  }
}
