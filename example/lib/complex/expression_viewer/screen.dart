import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras/pythagoras.dart';

class ExpressionViewerGuideScreen extends StatefulWidget {
  static const route = '/expression_viewer_guide';

  const ExpressionViewerGuideScreen({super.key});

  @override
  State<ExpressionViewerGuideScreen> createState() =>
      _ExpressionViewerScreenState();

  static PageRoute<ExpressionViewerGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const ExpressionViewerGuideScreen(),
      settings: settings,
    );
  }
}

class _ExpressionViewerScreenState extends State<ExpressionViewerGuideScreen> {
  final ExpressionViewerController fakeController = ExpressionViewerController(
    startItems: [
      const ExpressionTextModel.fake(string: ''),
      const ExpressionTextModel.fake(string: '3', color: Colors.red),
      const ExpressionTextModel.fake(string: '2', color: Colors.orangeAccent),
      const ExpressionTextModel.fake(string: '1', color: Colors.green),
    ],
    endItems: [
      const ExpressionTextModel.fake(string: ''),
    ],
  );
  late ExpressionViewerController realController;

  @override
  void initState() {
    super.initState();
    final builder = ExpressionBuilder.fromPattern(pattern: '[x]#[+]#[x]');
    final expressions = List.generate(
      10,
      (index) => builder.generateExpressionModel(index)!,
    );
    realController = ExpressionViewerController(
      startItems: [const ExpressionTextModel.fake(string: '')],
      expressions: expressions,
      endItems: [const ExpressionTextModel.fake(string: '')],
    );
  }

  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        AppSheetBar(
          title: AppText(
            'Expression Viewer Guide',
            uiStyle: globalStyle.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        AppPadding.verticalPadding16,
        Row(
          children: [
            Expanded(
              child: ExpressionViewer(
                controller: fakeController,
              ),
            ),
            Expanded(
              child: ExpressionViewer(
                controller: realController,
              ),
            ),
          ],
        ),
        AppPadding.verticalPadding16,
      ],
      bottomChildren: [
        AppPadding.verticalPadding16,
        AppPadding.horizontalWrapper16(
          child: AppActionButton(
            text: 'Next',
            textStyle: globalStyle.textStyle.semiBoldFont.buttonTitle,
            onTap: nextTapped,
          ),
        ),
        AppPadding.verticalPadding16,
      ],
    );
  }

  void nextTapped() {
    if (fakeController.currentIndex < fakeController.startItemsCount) {
      fakeController.moveToNext();
      if (fakeController.currentIndex == fakeController.startItemsCount) {
        realController.moveToNext();
      }
    } else {
      realController.moveToNext();
    }
  }
}
