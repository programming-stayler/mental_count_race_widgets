import 'package:carousel_slider/carousel_slider.dart';
import 'package:example/complex/screen.dart';
import 'package:example/routes.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras/pythagoras.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class ExpressionViewerGuideScreen extends StatefulWidget {
  static const route = '/expression_viewer_guide';

  const ExpressionViewerGuideScreen({super.key});

  @override
  State<ExpressionViewerGuideScreen> createState() =>
      _ExpressionViewerScreenState();

  static GoRoute buildRoute() {
    return AppTransitionRoute(
      path: ExpressionViewerGuideScreen.route,
      builder: (context, state) {
        return const ExpressionViewerGuideScreen();
      },
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
  final expressions = <ExpressionModel>[];

  final matchFinishedController = CarouselSliderController();
  bool showRealViewer = false;
  bool showMatchFinished = false;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 5; i++) {
      final size = faker.randomGenerator.integer(6, min: 1);
      var pattern = '[${List.generate(size, (i) => 'x').join()}]';
      final variablesAmount = faker.randomGenerator.integer(5, min: 1);
      for (var j = 0; j < variablesAmount; j++) {
        final size = faker.randomGenerator.integer(6, min: 1);
        pattern += '#[+]#[${List.generate(size, (i) => 'x').join()}]';
      }
      final builder = ExpressionBuilder.fromPattern(pattern: pattern);
      expressions.add(builder.generateExpressionModel(i)!);
    }
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
        WebAppBar(
          head: kIsWeb
              ? buildAppBarHead(context)
              : buildBackButton(() => context.go(ComplexGuideScreen.route)),
          title: AppText(
            'Expression Viewer Guide',
            uiStyle: globalStyle.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        AppPadding.verticalPadding16,
        Stack(
          children: [
            ExpressionViewer(
              controller: fakeController,
              fraction: 0.65,
            ),
            AnimatedOpacity(
              duration: 750.milliseconds,
              opacity: showRealViewer ? 1 : 0,
              child: ExpressionViewer(
                controller: realController,
                fraction: 0.3,
              ),
            ),
            AnimatedOpacity(
              duration: 750.milliseconds,
              opacity: showMatchFinished ? 1 : 0,
              child: _MatchFinishedBody(
                height: showMatchFinished ? 460.toHeight : null,
                controller: matchFinishedController,
                answers: expressions
                    .map(
                      (e) => ExpressionAnswer(
                        expression: e,
                        msTaken: faker.randomGenerator.integer(2700, min: 900),
                        answer: 0,
                        mistakes: faker.randomGenerator.integer(3),
                      ),
                    )
                    .toList(),
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
      final currentIndex = fakeController.currentIndex;
      final startItemsCount = fakeController.startItemsCount;
      if (currentIndex == startItemsCount - 1) {
        setState(() => showRealViewer = true);
      }
      if (fakeController.currentIndex == fakeController.startItemsCount) {
        realController.moveToNext();
      }
    } else {
      final currentIndex = realController.currentIndex;
      final expressionsCount = realController.expressionsCount;
      if (currentIndex == expressionsCount) {
        Future.delayed(const Duration(milliseconds: 150)).then((_) {
          setState(() {
            showRealViewer = false;
            showMatchFinished = true;
          });
          Future.delayed(const Duration(milliseconds: 350)).then((_) {
            matchFinishedController.nextPage();
          });
        });
      }
      realController.moveToNext();
    }
  }
}

class _MatchFinishedBody extends StatelessWidget {
  final CarouselSliderController? controller;
  final double? height;
  final List<ExpressionAnswer> answers;

  const _MatchFinishedBody({
    required this.answers,
    this.controller,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return CarouselSlider(
        items: [
          const SizedBox(),
          AppPadding.horizontalWrapper16(
            child: PlayerAnswersGraphic(
              answers: answers,
            ),
          ),
        ],
        carouselController: controller,
        options: CarouselOptions(
          height: height ?? 140.toHeight,
          viewportFraction: 0.85,
          enableInfiniteScroll: false,
          scrollDirection: Axis.vertical,
        ),
      );
    });
  }
}
