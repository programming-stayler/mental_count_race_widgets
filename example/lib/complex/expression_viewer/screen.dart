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
  late ExpressionViewerController controller;

  @override
  void initState() {
    super.initState();
    final builder = ExpressionBuilder.fromPattern(pattern: '[x]#[+]#[x]');

    controller = ExpressionViewerController(
      initExpressions: List.generate(
        20,
        (index) => builder.generateExpressionModel(
          index,
        )!,
      ),
      fakeItems: [
        const ExpressionTextModel.fake(string: ''),
        const ExpressionTextModel.fake(string: '3', color: Colors.red),
        const ExpressionTextModel.fake(string: '2', color: Colors.orangeAccent),
        const ExpressionTextModel.fake(string: '1', color: Colors.green),
      ],
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
        AppPadding.horizontalWrapper16(
          child: ExpressionViewer(
            controller: controller,
          ),
        ),
        AppPadding.verticalPadding16,
      ],
      bottomChildren: [
        AppPadding.verticalPadding16,
        AppPadding.horizontalWrapper16(
          child: AppActionButton(
            text: 'Next',
            textStyle: globalStyle.textStyle.semiBoldFont.buttonTitle,
            onTap: controller.moveToNext,
          ),
        ),
        AppPadding.verticalPadding16,
      ],
    );
  }
}
