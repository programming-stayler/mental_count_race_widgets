import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          'MCR Widgets',
          uiStyle: style.textStyle.semiBoldFont.tileTitle,
        ),
      ),
      body: Center(
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
              onTap: () => Navigator.of(context).push(
                BaseGuideScreen.getRoute(),
              ),
            ),
            AppPadding.verticalPadding32,
            InkWell(
              child: AppText(
                'Complex Guide',
                textAlign: TextAlign.center,
                uiStyle: style.textStyle.boldFont.simple,
              ),
              onTap: () => Navigator.of(context).push(
                ComplexGuideScreen.getRoute(),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
