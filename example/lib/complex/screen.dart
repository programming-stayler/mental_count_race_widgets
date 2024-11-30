import 'package:example/routes.dart';
import 'package:example/screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

export 'animation/screen.dart';
export 'app_sheet/screen.dart';
export 'bot/screen.dart';
export 'charts/screen.dart';
export 'expression_viewer/screen.dart';
export 'fields/screen.dart';
export 'keyboard/screen.dart';
export 'pickers/screen.dart';
export 'players_progress/screen.dart';
export 'tutorial_prototype/screen.dart';

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

  static GoRoute buildRoute() {
    return AppTransitionRoute(
      path: ComplexGuideScreen.route,
      builder: (context, state) {
        return const ComplexGuideScreen();
      },
    );
  }
}

class _ComplexGuideScreenState extends State<ComplexGuideScreen> {
  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        WebAppBar(
          head: kIsWeb
              ? buildAppBarHead(context)
              : buildBackButton(() => context.go(GuidesScreen.route)),
          title: AppText(
            'Complex Guides',
            uiStyle: style.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        Expanded(
          child: Center(
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
                    onTap: () => context.go(AnimationGuideScreen.route),
                  ),
                  AppPadding.verticalPadding32,
                  InkWell(
                    child: AppText(
                      'App Sheet',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.boldFont.simple,
                    ),
                    onTap: () => context.go(AppSheetGuideScreen.route),
                  ),
                  AppPadding.verticalPadding32,
                  InkWell(
                    child: AppText(
                      'Keyboard',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.boldFont.simple,
                    ),
                    onTap: () => context.go(KeyboardGuideScreen.route),
                  ),
                  AppPadding.verticalPadding32,
                  InkWell(
                    child: AppText(
                      'Expression Viewer',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.boldFont.simple,
                    ),
                    onTap: () => context.go(ExpressionViewerGuideScreen.route),
                  ),
                  AppPadding.verticalPadding32,
                  InkWell(
                    child: AppText(
                      'Players Progress',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.boldFont.simple,
                    ),
                    onTap: () => context.go(PlayersProgressGuideScreen.route),
                  ),
                  AppPadding.verticalPadding32,
                  InkWell(
                    child: AppText(
                      'Graphic',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.boldFont.simple,
                    ),
                    onTap: () => context.go(ChartsGuideScreen.route),
                  ),
                  AppPadding.verticalPadding32,
                  InkWell(
                    child: AppText(
                      'Pickers',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.boldFont.simple,
                    ),
                    onTap: () => context.go(PickersGuideScreen.route),
                  ),
                  AppPadding.verticalPadding32,
                  InkWell(
                    child: AppText(
                      'Fields',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.boldFont.simple,
                    ),
                    onTap: () => context.go(FieldsGuideScreen.route),
                  ),
                  AppPadding.verticalPadding32,
                  InkWell(
                    child: AppText(
                      'Tutorial Prototype',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.boldFont.simple,
                    ),
                    onTap: () => context.go(TutorialPrototypeScreen.route),
                  ),
                  AppPadding.verticalPadding32,
                  InkWell(
                    child: AppText(
                      'Bot',
                      textAlign: TextAlign.center,
                      uiStyle: style.textStyle.boldFont.simple,
                    ),
                    onTap: () => context.go(BotGuideScreen.route),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
