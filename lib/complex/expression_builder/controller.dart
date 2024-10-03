import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras/pythagoras.dart';

class ExpressionBuilderController {
  final List<ComponentVM> _components = [
    NumSelectorVM(),
    OperationSelectorVM(),
    NumSelectorVM(),
  ];

  List<ComponentVM> get components {
    return List<ComponentVM>.from(_components);
  }

  void extendExpression() {
    _components.addAll([
      OperationSelectorVM(),
      NumSelectorVM(),
    ]);
  }

  void removeComponentAtIndex(int index) {
    _components.removeAt(index);
    _components.removeAt(index);
  }

  ExpressionBuilderParams buildPattern() {
    final pattern = StringBuffer();
    for (var i = 0; i < _components.length; i++) {
      final comp = _components[i];
      pattern.write(patternStart);
      pattern.write(comp.buildString());
      pattern.write(patternEnd);
      if (i + 1 < _components.length) {
        pattern.write(patternSeparator);
      }
    }
    return ExpressionBuilderParams(
      pattern: pattern.toString(),
    );
  }
}