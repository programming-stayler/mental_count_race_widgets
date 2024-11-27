import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';

import 'base/screen.dart';
import 'complex/screen.dart';

class GuidesScreen extends StatefulWidget {
  static const route = '/guides';

  const GuidesScreen({super.key});

  @override
  State<GuidesScreen> createState() => _GuidesScreenState();

  static PageRoute<GuidesScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const GuidesScreen(),
      settings: settings,
    );
  }
}

class _GuidesScreenState extends State<GuidesScreen> {
  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          InkWell(
            child: AppText(
              'Base Guide',
              textAlign: TextAlign.center,
              uiStyle: style.textStyle.boldFont.simple,
            ),
            onTap: () => GoRouter.of(context).go(BaseGuideScreen.route),
          ),
          AppPadding.verticalPadding32,
          InkWell(
            child: AppText(
              'Complex Guide',
              textAlign: TextAlign.center,
              uiStyle: style.textStyle.boldFont.simple,
            ),
            onTap: () => GoRouter.of(context).go(ComplexGuideScreen.route),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
