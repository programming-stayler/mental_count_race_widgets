import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class PickersGuideScreen extends StatefulWidget {
  static const route = '/pickers_guide';

  const PickersGuideScreen({super.key});

  @override
  State<PickersGuideScreen> createState() => _PickersGuideScreenState();

  static PageRoute<PickersGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const PickersGuideScreen(),
      settings: settings,
    );
  }
}

class _PickersGuideScreenState extends State<PickersGuideScreen> {
  MatchLimit matchLimit = const MatchLimit.expressionsLimit(20);
  final values = <MatchLimitType, int>{};
  final builderController = ExpressionBuilderController();

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        AppSheetBar(
          title: AppText(
            'Pickers Guide',
            uiStyle: style.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppPadding.verticalPadding16,
                MatchLimitPicker(
                  initial: matchLimit.type,
                  values: MatchLimitType.values,
                  onChanged: (mode) => setState(() => matchLimit = mode),
                ),
                AppPadding.verticalPadding32,
                if (matchLimit.type != MatchLimitType.infinite)
                  SliderNumbersPicker(
                    value: values[matchLimit.type] ??
                        matchLimit.type.initialLimitValue,
                    minValue: matchLimit.type.minValue,
                    maxValue: matchLimit.type.maxValue,
                    step: matchLimit.type.step,
                    onChanged: (value) => setState(() {
                      values[matchLimit.type] = value;
                      switch (matchLimit.type) {
                        case MatchLimitType.infinite:
                          matchLimit = const MatchLimit.infinite();
                          break;
                        case MatchLimitType.timerLimit:
                          matchLimit = MatchLimit.timerLimit(value);
                          break;
                        case MatchLimitType.expressionsLimit:
                          matchLimit = MatchLimit.expressionsLimit(value);
                          break;
                        case MatchLimitType.answersLimit:
                          matchLimit = MatchLimit.answersLimit(value);
                          break;
                      }
                    }),
                  )
                else
                  SizedBox(
                    height: 48.toHeight,
                    child: AppText(
                      '∞',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.semiBoldFont.tileTitle
                          .copyWith(colorHex: style.borderColorHex),
                    ),
                  ),
                AppPadding.verticalPadding32,
                AppPadding.horizontalWrapper8(
                  child: ExpressionBuilderWidget(
                    controller: builderController,
                  ),
                ),
                AppPadding.verticalPadding16,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
