import 'package:carousel_slider/carousel_slider.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras/pythagoras.dart';

class ExpressionViewerController {
  int _currentFakeItemIndex = 0;
  int _currentExpressionIndex = 0;
  final _fakeItems = <ExpressionTextModel>[];
  final _expressions = <ExpressionTextModel>[];
  final carouselController = CarouselSliderController();

  ExpressionTextModel? get currentItem {
    return _fakeItemByIndex(_currentFakeItemIndex) ??
        _expressionByIndex(_currentExpressionIndex);
  }

  ExpressionTextModel? get nextItem {
    final nextFake = _fakeItemByIndex(_currentFakeItemIndex + 1);
    if (nextFake == null) {
      final currentFake = _fakeItemByIndex(_currentFakeItemIndex);
      final nextExpr = _expressionByIndex(_currentExpressionIndex + 1);
      if (currentFake == null) {
        return nextExpr;
      }
      return _expressionByIndex(_currentExpressionIndex);
    }
    return nextFake;
  }

  ExpressionViewerController({
    List<ExpressionModel> initExpressions = const [],
    List<ExpressionTextModel> fakeItems = const [],
  }) {
    _expressions.addAll(
      initExpressions.map((e) => ExpressionTextModel.expression(expression: e)),
    );
    _fakeItems.addAll(
      fakeItems,
    );
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
  }

  void incrementItemIndex() {
    carouselController.jumpToPage(0);
    if (_currentFakeItemIndex < _fakeItems.length) {
      _currentFakeItemIndex += 1;
    } else {
      _currentExpressionIndex += 1;
    }
  }

  ExpressionTextModel? _fakeItemByIndex(int index) {
    if (index >= _fakeItems.length) {
      return null;
    }
    return _fakeItems[index];
  }

  ExpressionTextModel? _expressionByIndex(int index) {
    if (index >= _expressions.length) {
      return null;
    }
    return _expressions[index];
  }
}