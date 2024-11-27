import 'package:example/screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';

import 'base/screen.dart';
import 'complex/screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AppGlobalStyle(
      style: neuBrutalism,
      child: MaterialApp.router(
        routerConfig: GoRouter(
          navigatorKey: navigatorKey,
          initialLocation: SplashScreen.route,
          routes: <RouteBase>[
            ShellRoute(
              navigatorKey: shellNavigatorKey,
              builder: (context, state, child) {
                if (state.fullPath == SplashScreen.route) return child;
                final style = AppGlobalStyle.of(context).style;
                return WebAppSheetScaffold(
                  topChild: Row(
                    children: [
                      AppPadding.horizontalPadding16,
                      IconButton(
                        icon: AppText(
                          'Base',
                          uiStyle: style.textStyle.semiBoldFont.tileTitle,
                        ),
                        onPressed: () {
                          GoRouter.of(context).go(BaseGuideScreen.route);
                        },
                      ),
                      AppPadding.horizontalPadding16,
                      IconButton(
                        icon: AppText(
                          'Complex',
                          uiStyle: style.textStyle.semiBoldFont.tileTitle,
                        ),
                        onPressed: () {
                          GoRouter.of(context).go(ComplexGuideScreen.route);
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                  child: child,
                );
              },
              routes: [
                GoRoute(
                  path: SplashScreen.route,
                  builder: (context, state) {
                    return const SplashScreen();
                  },
                  routes: [
                    GoRoute(
                      path: GuidesScreen.route,
                      builder: (context, state) {
                        return const GuidesScreen();
                      },
                      // routes: [
                      // ],
                    ),
                  ],
                ),
                GoRoute(
                  path: BaseGuideScreen.route,
                  builder: (context, state) {
                    return const BaseGuideScreen();
                  },
                ),
                GoRoute(
                  path: ComplexGuideScreen.route,
                  builder: (context, state) {
                    return const ComplexGuideScreen();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  static const route = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SizeConfig.instance.init(
        navigatorKey.currentState!.overlay!.context,
      );
      GoRouter.of(context).go(GuidesScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
