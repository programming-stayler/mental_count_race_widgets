import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';

import 'routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

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
          routes: buildRoutes(),
        ),
      ),
    );
  }
}
