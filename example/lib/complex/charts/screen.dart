import 'package:example/complex/screen.dart';
import 'package:example/routes.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras/pythagoras.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class ChartsGuideScreen extends StatefulWidget {
  static const route = '/charts_guide';

  const ChartsGuideScreen({super.key});

  @override
  State<ChartsGuideScreen> createState() => _ChartsGuideScreenState();

  static GoRoute buildRoute() {
    return AppTransitionRoute(
      path: ChartsGuideScreen.route,
      builder: (context, state) {
        return const ChartsGuideScreen();
      },
    );
  }
}

class _ChartsGuideScreenState extends State<ChartsGuideScreen> {
  List<ExpressionAnswer> answers = [];
  final faker = Faker();
  var speed = 25;

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
        WebAppBar(
          head: kIsWeb
              ? buildAppBarHead(context)
              : buildBackButton(() => context.go(ComplexGuideScreen.route)),
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
                Container(
                  constraints: const BoxConstraints(maxWidth: 800),
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
                AppPadding.verticalPadding16,
                Container(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: AppPadding.horizontalWrapper16(
                    child: SpeedValueWidget(
                      speed: speed,
                    ),
                  ),
                ),
                AppPadding.verticalPadding16,
                Container(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: AppPadding.horizontalWrapper16(
                    child: Slider(
                      value: speed.toDouble(),
                      min: minSpeed.toDouble(),
                      max: maxSpeed.toDouble(),
                      onChanged: (value) => setState(() {
                        speed = value.toInt();
                      }),
                    ),
                  ),
                ),
                AppPadding.verticalPadding16,
                SizedBox(height: context.padding.bottom),
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
