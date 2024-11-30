import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';

import 'base/screen.dart';
import 'complex/screen.dart';
import 'screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

List<RouteBase> buildRoutes() {
  return [
    SplashScreen.buildRoute(
      routes: [GuidesScreen.buildRoute()],
    ),
    BaseGuideScreen.buildRoute(),
    ComplexGuideScreen.buildRoute(),
    // COMPLEX
    AnimationGuideScreen.buildRoute(),
    AppSheetGuideScreen.buildRoute(),
    KeyboardGuideScreen.buildRoute(),
    ExpressionViewerGuideScreen.buildRoute(),
    PlayersProgressGuideScreen.buildRoute(),
    ChartsGuideScreen.buildRoute(),
    PickersGuideScreen.buildRoute(),
    FieldsGuideScreen.buildRoute(),
    TutorialPrototypeScreen.buildRoute(),
    BotGuideScreen.buildRoute(),
  ];
}

class SplashScreen extends StatefulWidget {
  static const route = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  static GoRoute buildRoute({required List<RouteBase> routes}) {
    return GoRoute(
      path: SplashScreen.route,
      builder: (context, state) {
        return const SplashScreen();
      },
      routes: routes,
    );
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SizeConfig.instance.init(
        navigatorKey.currentState!.overlay!.context,
      );
      context.go(GuidesScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Material(child: SizedBox());
  }
}

Widget buildAppBarHead(BuildContext context) {
  final style = AppGlobalStyle.of(context).style;
  return Expanded(
    child: Row(
      children: [
        AppPadding.horizontalPadding16,
        IconButton(
          icon: AppText(
            'Base',
            uiStyle: style.textStyle.semiBoldFont.buttonTitle,
          ),
          onPressed: () {
            context.go(BaseGuideScreen.route);
          },
        ),
        AppPadding.horizontalPadding16,
        IconButton(
          icon: AppText(
            'Complex',
            uiStyle: style.textStyle.semiBoldFont.buttonTitle,
          ),
          onPressed: () {
            context.go(ComplexGuideScreen.route);
          },
        ),
        const Spacer(),
      ],
    ),
  );
}

Widget buildBackButton(VoidCallback onPressed) {
  return IconButton(
    icon: Icon(Icons.arrow_back, size: min(24.toWidth, 28)),
    onPressed: onPressed,
  );
}
