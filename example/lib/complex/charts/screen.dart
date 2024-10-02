import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras/pythagoras.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class ChartsGuideScreen extends StatefulWidget {
  static const route = '/charts_guide';

  const ChartsGuideScreen({super.key});

  @override
  State<ChartsGuideScreen> createState() => _ChartsGuideScreenState();

  static PageRoute<ChartsGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const ChartsGuideScreen(),
      settings: settings,
    );
  }
}

class _ChartsGuideScreenState extends State<ChartsGuideScreen> {
  final faker = Faker();
  List<ExpressionAnswer> answers = [];

  @override
  void initState() {
    super.initState();
    generateAnswers();
  }

  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        AppSheetBar(
          title: AppText(
            'Charts Guide',
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
                AppPadding.horizontalWrapper16(
                  child: PlayerAnswersGraphic(
                    answers: answers,
                  ),
                ),
                AppPadding.verticalPadding16,
                AppPadding.horizontalWrapper16(
                  child: AppActionButton(
                    text: 'Regenerate',
                    onTap: generateAnswers,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void generateAnswers() {
    answers.clear();
    final length = faker.randomGenerator.integer(20, min: 18);
    final builder = ExpressionBuilder.fromPattern(pattern: '[x]#[+]#[xx]');
    for (var i = 0; i < length; i++) {
      answers.add(
        ExpressionAnswer(
          expression: builder.generateExpressionModel(i)!,
          answer: 0,
          msTaken: faker.randomGenerator.integer(300, min: 60) * 10,
        ),
      );
    }
  }
}
