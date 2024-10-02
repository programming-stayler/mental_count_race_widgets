import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

export 'app_style/app_style.dart';
export 'container_style/container_style.dart';
export 'text_style/text_style.dart';

class AppGlobalStyle extends InheritedWidget {
  final AppStyleSystem style;

  const AppGlobalStyle({
    super.key,
    required super.child,
    required this.style,
  });

  static AppGlobalStyle of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<AppGlobalStyle>();
    assert(result != null, 'No AppGlobalStyle found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant AppGlobalStyle oldWidget) {
    return oldWidget.style != style;
  }
}
