import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

import 'animation/screen.dart';
import 'app_sheet/screen.dart';
import 'bot/screen.dart';
import 'charts/screen.dart';
import 'expression_viewer/screen.dart';
import 'fields/screen.dart';
import 'keyboard/screen.dart';
import 'pickers/screen.dart';
import 'players_progress/screen.dart';
import 'tutorial_prototype/screen.dart';

class ComplexGuideScreen extends StatefulWidget {
  static const route = '/complex_guide';

  const ComplexGuideScreen({super.key});

  @override
  State<ComplexGuideScreen> createState() => _ComplexGuideScreenState();

  static PageRoute<ComplexGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const ComplexGuideScreen(),
      settings: settings,
    );
  }
}

class _ComplexGuideScreenState extends State<ComplexGuideScreen> {
  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              child: AppText(
                'Animation',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                AnimationGuideScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'App Sheet',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                AppSheetGuideScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'Keyboard',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                KeyboardGuideScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'Expression Viewer',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                ExpressionViewerGuideScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'Players Progress',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                PlayersProgressGuideScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'Graphic',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                ChartsGuideScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'Pickers',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                PickersGuideScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'Fields',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                FieldsGuideScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'Tutorial Prototype',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                TutorialPrototypeScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'Bot',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                BotGuideScreen.getRoute(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
