import 'package:carousel_slider/carousel_slider.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras/pythagoras.dart';

class ExpressionViewerController {
  int _currentStartItemIndex = 0;
  int _currentExpressionIndex = 0;
  int _currentEndItemIndex = 0;
  final _startItems = <ExpressionTextModel>[];
  final _expressions = <ExpressionTextModel>[];
  final _endItems = <ExpressionTextModel>[];
  final carouselController = CarouselSliderController();

  int get currentIndex {
    return _currentStartItemIndex +
        _currentExpressionIndex +
        _currentEndItemIndex;
  }

  int get startItemsCount {
    return _startItems.length;
  }

  int get expressionsCount {
    return _expressions.length;
  }

  List<ExpressionTextModel> get allItems {
    return [
      ..._startItems,
      ..._expressions,
      ..._endItems,
    ];
  }

  ExpressionTextModel? get currentItem {
    return _endItemByIndex(_currentStartItemIndex) ??
        _expressionByIndex(_currentExpressionIndex);
  }

  ExpressionTextModel? get nextItem {
    final nextFake = _endItemByIndex(_currentStartItemIndex + 1);
    if (nextFake == null) {
      final currentFake = _endItemByIndex(_currentStartItemIndex);
      final nextExpr = _expressionByIndex(_currentExpressionIndex + 1);
      if (currentFake == null) {
        return nextExpr;
      }
      return _expressionByIndex(_currentExpressionIndex);
    }
    return nextFake;
  }

  ExpressionViewerController({
    List<ExpressionModel> expressions = const [],
    List<ExpressionTextModel> startItems = const [],
    List<ExpressionTextModel> endItems = const [],
  }) {
    _expressions.addAll(
      expressions.map((e) => ExpressionTextModel.expression(expression: e)),
    );
    _startItems.addAll(startItems);
    _endItems.addAll(endItems);
  }

  void addExpression(ExpressionModel expression) {
    _expressions.add(ExpressionTextModel.expression(expression: expression));
  }

  void addExpressions(List<ExpressionModel> expressions) {
    _expressions.addAll(
      expressions.map((e) => ExpressionTextModel.expression(expression: e)),
    );
  }

  void moveToNext() {
    carouselController.nextPage(
      duration: const Duration(
        milliseconds: 150,
      ),
    );
    incrementItemIndex();
  }

  void incrementItemIndex() {
    if (_currentStartItemIndex < _startItems.length) {
      _currentStartItemIndex += 1;
    } else if (_currentExpressionIndex < _expressions.length) {
      _currentExpressionIndex += 1;
    } else {
      _currentEndItemIndex += 1;
    }
  }

  ExpressionTextModel? _endItemByIndex(int index) {
    if (index >= _startItems.length) {
      return null;
    }
    return _startItems[index];
  }

  ExpressionTextModel? _expressionByIndex(int index) {
    if (index >= _expressions.length) {
      return null;
    }
    return _expressions[index];
  }
}
