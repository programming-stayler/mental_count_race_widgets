import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

import 'app_sheet/screen.dart';
import 'charts/screen.dart';
import 'expression_viewer/screen.dart';
import 'keyboard/screen.dart';
import 'pickers/screen.dart';
import 'players_progress/screen.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complex Guide'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
