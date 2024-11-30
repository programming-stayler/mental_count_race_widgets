import 'package:example/complex/screen.dart';
import 'package:example/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class KeyboardGuideScreen extends StatefulWidget {
  static const route = '/keyboard_guide';

  const KeyboardGuideScreen({super.key});

  @override
  State<KeyboardGuideScreen> createState() => _KeyboardGuideScreenState();

  static GoRoute buildRoute() {
    return AppTransitionRoute(
      path: KeyboardGuideScreen.route,
      builder: (context, state) {
        return const KeyboardGuideScreen();
      },
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
        WebAppBar(
          head: kIsWeb
              ? buildAppBarHead(context)
              : buildBackButton(() => context.go(ComplexGuideScreen.route)),
          title: AppText(
            'Keyboard Guide',
            uiStyle: globalStyle.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        _KeyboardSliderNumbersPicker(
          value: settings.keySize.toInt(),
          type: KeyboardSettingsType.size,
          onChanged: (value) => setState(() {
            settings = settings.copyWith(
              keySize: value.toDouble(),
            );
          }),
        ),
        AppPadding.verticalPadding16,
        _KeyboardSliderNumbersPicker(
          value: settings.keysOffset.toInt(),
          type: KeyboardSettingsType.offset,
          onChanged: (value) => setState(() {
            settings = settings.copyWith(
              keysOffset: value.toDouble(),
            );
          }),
        ),
      ],
      bottomChildren: [
        AppPadding.verticalPadding16,
        AppPadding.horizontalWrapper16(
          child: MatchKeyboard(
            mode: KeyboardMode.key(
              settings: settings,
              onKeyPressed: (key) {
                debugPrint(key.toString());
              },
            ),
          ),
        ),
        AppPadding.verticalPadding16,
      ],
    );
  }
}

class _KeyboardSliderNumbersPicker extends SliderNumbersPicker {
  _KeyboardSliderNumbersPicker({
    required super.value,
    required KeyboardSettingsType type,
    required super.onChanged,
}) : super(
    step: type.step,
    minValue: type.minValue,
    maxValue: type.maxValue,
  );
}

enum KeyboardSettingsType {
  size,
  offset,
}

extension KeyboardSettingsTypeUtils on KeyboardSettingsType {
  int get defaultValue {
    return (maxValue + minValue) ~/ 2;
  }

  int get minValue {
    switch (this) {
      case KeyboardSettingsType.size:
        return 44;
      case KeyboardSettingsType.offset:
        return 8;
    }
  }

  int get maxValue {
    switch (this) {
      case KeyboardSettingsType.size:
        return 60;
      case KeyboardSettingsType.offset:
        return 20;
    }
  }

  int get step {
    return 1;
  }
}
