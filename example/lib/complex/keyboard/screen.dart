import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class KeyboardGuideScreen extends StatefulWidget {
  static const route = '/keyboard_guide';

  const KeyboardGuideScreen({super.key});

  @override
  State<KeyboardGuideScreen> createState() => _KeyboardGuideScreenState();

  static PageRoute<KeyboardGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const KeyboardGuideScreen(),
      settings: settings,
    );
  }
}

class _KeyboardGuideScreenState extends State<KeyboardGuideScreen> {
  KeyboardSettings settings = const KeyboardSettings();

  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        AppSheetBar(
          title: AppText(
            'Keyboard Guide',
            uiStyle: globalStyle.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bottomChildren: [
        AppPadding.verticalPadding16,
        AppPadding.horizontalWrapper16(
          child: MatchKeyboard(
            settings: settings,
            onKeyPressed: (key) {
              debugPrint(key.toString());
            },
          ),
        ),
        AppPadding.verticalPadding16,
      ],
    );
  }
}
