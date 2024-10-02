import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class AppSheetGuideScreen extends StatefulWidget {
  static const route = '/app_sheet_guide';

  const AppSheetGuideScreen({super.key});

  @override
  State<AppSheetGuideScreen> createState() => _AppSheetGuideScreenState();

  static PageRoute<AppSheetGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const AppSheetGuideScreen(),
      settings: settings,
    );
  }
}

class _AppSheetGuideScreenState extends State<AppSheetGuideScreen> {
  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        AppSheetBar(
          title: AppText(
            'App Sheet Guide',
            uiStyle: globalStyle.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        AppPadding.verticalPadding16,
        AppContainer.fromStyle(
          style: globalStyle.containerStyle,
          child: AppText(
            'Screen Body',
            uiStyle: globalStyle.textStyle.semiBoldFont.pageTitle,
          ),
        ),
        AppPadding.verticalPadding16,
      ],
      bottomChildren: [
        AppPadding.verticalPadding16,
        AppPadding.horizontalWrapper8(
          child: AppContainer.fromStyle(
            style: globalStyle.containerStyle,
            child: AppText(
              'Bottom App Sheet',
              uiStyle: globalStyle.textStyle.lightFont.buttonTitle,
            ),
          ),
        ),
        AppPadding.verticalPadding16,
      ],
    );
  }
}
