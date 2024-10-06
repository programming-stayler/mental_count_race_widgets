import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class AnimationGuideScreen extends StatefulWidget {
  static const route = '/animation_guide';

  const AnimationGuideScreen({super.key});

  @override
  State<AnimationGuideScreen> createState() => _AnimationGuideScreenState();

  static PageRoute<AnimationGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const AnimationGuideScreen(),
      settings: settings,
    );
  }
}

class _AnimationGuideScreenState extends State<AnimationGuideScreen> {
  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    final title = TmpSection.values[selectedPageIndex].title;
    final bodyChildren = List<Widget>.generate(
      faker.randomGenerator.integer(6, min: 2),
      (index) {
        return AppPadding.horizontalWrapper16(
          child: AppContainer.fromStyle(
            style: globalStyle.containerStyle,
            child: AppText('$title Item ${index + 1}'),
          ),
        );
      },
    );
    return AnimatedAppSheetScaffold(
      topChildren: [
        AppSheetBar(
          title: AppText(
            'Animation Guide',
            uiStyle: globalStyle.textStyle.regularFont.tileTitle,
          ),
        ),
        AppPadding.horizontalWrapper8(
          child: ItemPicker(
            items: TmpSection.values,
            initIndex: 0,
            bgColor: globalStyle.appSheetStyle.colorHex?.color ??
                globalStyle.screenBGColorHex.color,
            onChanged: (index) => setState(() {
              selectedPageIndex = index;
            }),
          ),
        ),
        AppPadding.verticalPadding8,
      ],
      bodyChildren: bodyChildren,
    );
  }
}

enum TmpSection implements TitleItemInterface {
  section1,
  section2,
  section3;

  @override
  String get title => switch (this) {
        TmpSection.section1 => 'Section 1',
        TmpSection.section2 => 'Section 2',
        TmpSection.section3 => 'Section 3',
      };
}
