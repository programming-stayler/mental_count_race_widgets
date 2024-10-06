import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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

class AnimatedAppSheetScaffold extends StatefulWidget {
  final List<Widget> topChildren;
  final List<Widget> bodyChildren;
  final List<Widget> bottomChildren;
  final AnimationController? controller;

  const AnimatedAppSheetScaffold({
    super.key,
    required this.topChildren,
    required this.bodyChildren,
    this.bottomChildren = const [],
    this.controller,
  });

  @override
  State<AnimatedAppSheetScaffold> createState() =>
      _AnimatedAppSheetScaffoldState();
}

class _AnimatedAppSheetScaffoldState extends State<AnimatedAppSheetScaffold>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  var showBody = false;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ??
        AnimationController(
          vsync: this,
          duration: 350.milliseconds,
        );
    if (widget.controller == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller
            .forward(
              from: 0.0,
            )
            .then(
              (value) => setState(() => showBody = true),
            );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BGWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppSheet(
              type: AppSheetType.fromTop,
              controller: widget.controller,
              children: widget.topChildren,
            ),
            if (showBody)
              AnimatedColumn(
                key: GlobalKey(),
                duration: 650.milliseconds,
                children: widget.bodyChildren,
              ),
            if (!showBody) const Spacer(),
            if (widget.bottomChildren.isNotEmpty)
              AppSheet(
                type: AppSheetType.fromBottom,
                controller: widget.controller,
                children: widget.bottomChildren,
              ),
          ],
        ),
      ),
    );
  }
}
