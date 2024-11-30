import 'package:example/routes.dart';
import 'package:example/screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class BaseGuideScreen extends StatefulWidget {
  static const route = '/base_guide';

  const BaseGuideScreen({super.key});

  @override
  State<BaseGuideScreen> createState() => _BaseGuideScreenState();

  static PageRoute<BaseGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const BaseGuideScreen(),
      settings: settings,
    );
  }

  static GoRoute buildRoute() {
    return AppTransitionRoute(
      path: BaseGuideScreen.route,
      builder: (context, state) {
        return const BaseGuideScreen();
      },
    );
  }
}

class _BaseGuideScreenState extends State<BaseGuideScreen> {
  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        WebAppBar(
          head: kIsWeb
              ? buildAppBarHead(context)
              : buildBackButton(() => context.go(GuidesScreen.route)),
          title: AppText(
            'Base Guides',
            uiStyle: globalStyle.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppPadding.verticalPadding16,
                AppPadding.horizontalWrapper8(
                  child: AppContainer.fromStyle(
                    style: globalStyle.containerStyle,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AppText(
                          'Profile',
                          uiStyle: globalStyle.textStyle.regularFont.profile,
                        ),
                        AppPadding.verticalPadding16,
                        AppText(
                          'Form Title',
                          uiStyle: globalStyle.textStyle.regularFont.formTitle,
                        ),
                        AppPadding.verticalPadding16,
                        AppText(
                          'Page Title',
                          uiStyle: globalStyle.textStyle.regularFont.pageTitle,
                        ),
                        AppPadding.verticalPadding16,
                        AppText(
                          'Number Title',
                          uiStyle:
                              globalStyle.textStyle.regularFont.numberTitle,
                        ),
                        AppPadding.verticalPadding16,
                        AppText(
                          'Tile Title',
                          uiStyle: globalStyle.textStyle.regularFont.tileTitle,
                        ),
                        AppPadding.verticalPadding16,
                        AppText(
                          'Button Title',
                          uiStyle:
                              globalStyle.textStyle.regularFont.buttonTitle,
                        ),
                        AppPadding.verticalPadding16,
                        AppText(
                          'Simple',
                          uiStyle: globalStyle.textStyle.regularFont.simple,
                        ),
                        AppPadding.verticalPadding16,
                        AppText(
                          'Subtitle',
                          uiStyle: globalStyle.textStyle.regularFont.subtitle,
                        ),
                        AppPadding.verticalPadding16,
                        AppText(
                          'Description',
                          uiStyle:
                              globalStyle.textStyle.regularFont.description,
                        ),
                        AppPadding.verticalPadding16,
                        AppText(
                          'hint',
                          uiStyle: globalStyle.textStyle.regularFont.hint,
                        ),
                      ],
                    ),
                  ),
                ),
                AppPadding.verticalPadding16,
                AppPadding.horizontalWrapper8(
                  child: AppActionButton(
                    text: 'Action Button',
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => AppText(
                        'Action button tapped',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
