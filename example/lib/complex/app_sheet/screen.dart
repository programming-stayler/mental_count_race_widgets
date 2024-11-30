import 'package:example/complex/screen.dart';
import 'package:example/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class AppSheetGuideScreen extends StatefulWidget {
  static const route = '/app_sheet_guide';

  const AppSheetGuideScreen({super.key});

  @override
  State<AppSheetGuideScreen> createState() => _AppSheetGuideScreenState();

  static GoRoute buildRoute() {
    return AppTransitionRoute(
      path: AppSheetGuideScreen.route,
      builder: (context, state) {
        return const AppSheetGuideScreen();
      },
    );
  }
}

class _AppSheetGuideScreenState extends State<AppSheetGuideScreen> {
  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        WebAppBar(
          head: kIsWeb
              ? buildAppBarHead(context)
              : buildBackButton(() => context.go(ComplexGuideScreen.route)),
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
