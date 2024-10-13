import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras/pythagoras.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class TutorialPrototypeScreen extends StatefulWidget {
  static const route = '/tutorial_prototype';

  const TutorialPrototypeScreen({super.key});

  @override
  State<TutorialPrototypeScreen> createState() =>
      _TutorialPrototypeScreenState();

  static PageRoute<TutorialPrototypeScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const TutorialPrototypeScreen(),
      settings: settings,
    );
  }
}

class _TutorialPrototypeScreenState extends State<TutorialPrototypeScreen> {
  late AppTutorial tutorial;

  @override
  void initState() {
    super.initState();
    tutorial = AppTutorial(
      title: 'Why this year’s hurricane season is worse than most',
      author: const User.server(
        id: '1',
        nickname: 'MCR Creator',
        email: 'test@email',
      ),
      createdAt: DateTime.now().subtract(10.days),
      minsToRead: 8,
      likes: 8,
      dislikes: 1,
      expressionParams: const ExpressionBuilderParams(pattern: '[x]#[+]#[x]'),
      limit: const MatchLimit.answersLimit(20),
      content: [
        const TextSectionModel(
          text:
              'Hurricane Milton made landfall as a Category 3 hurricane last night. It’s the third-fastest intensifying Atlantic storm ever, and the first major hurricane to hit Tampa in over a century.',
        ),
        const TextSectionModel(
          text:
              'If you’re in Florida, I hope you’re taking Xanadu Allen’s advice. She works at a police station on Anna Maria Island near Tampa Bay. As of yesterday, Allen was heading inland: “I am relying on the way I frame my reality; I control what I can, accept what I cannot and decide which category everything in my life falls into',
        ),
        const SpotlightSectionModel(
          text: 'XY * 11 = X(X+Y)Y',
        ),
        const TextSectionModel(
          text:
              'Milton joins Helene, Ernesto, and Beryl in an unusually active hurricane season. There aren’t more cyclones than usual, but those that form are intensifying more rapidly. Milton’s wind speed more than doubled from 74mph (Category 1) to 180mph (Category 5) in less than a day earlier this week. One reason: warm water. A hotter ocean evaporates faster, and it can turbocharge a hurricane. There’s a marine heatwave happening right now — ocean temps this spring were 4.5 standard deviations above the mean:',
        ),
        const LinkSectionModel(
          link:
              'https://pbs.twimg.com/media/GG86uz-a4AAkBZ3?format=jpg&name=large',
          type: TutorialLinkType.image,
        ),
        const BulletListSectionModel(
          title: 'What else we’re reading: figs, ASMR, and namedropping',
          sections: [
            TextSectionModel(
              text:
                  'Everyone needs to try fresh figs at least once, urges Evin Ibrahim, who lives in Iraq (home to a unique type of fig). Most are only ripe for a few weeks in summer and early fall, and they travel terribly, so if you can find them… eat them!',
            ),
            TextSectionModel(
              text:
                  ':: snaps fingers :: :: crinkles paper :: :: blows softly into the mic :: John Kruse MD, PhD explains the science behind ASMR (auto-sensory meridian response), a feeling of euphoria triggered by soft, crunchy sounds.',
            ),
            TextSectionModel(
              text:
                  'People’s brains light up when they hear their names. Designer Raquel Piqueras thinks you should do more namedropping at work — it’s a subtle thing, but it brings people closer to you. Don’t just say “our team did X,” say “Breana, Greg, and I did X.”',
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final regularFont = style.textStyle.regularFont;
    final semiBoldFont = style.textStyle.semiBoldFont;
    return AppSheetScaffold(
      topChildren: [
        AppSheetBar(
          title: AppText(
            'Tutorial',
            uiStyle: style.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        Expanded(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AppPadding.verticalPadding16,
                    AppPadding.horizontalWrapper16(
                      child: TutorialTitleSection(
                        title: tutorial.title,
                      ),
                    ),
                    AppPadding.verticalPadding16,
                    AppPadding.horizontalWrapper16(
                      child: TutorialInfoSection(
                        author: tutorial.author,
                        createdAt: tutorial.createdAt,
                        minsToRead: tutorial.minsToRead,
                      ),
                    ),
                    AppPadding.verticalPadding16,
                    AppPadding.horizontalWrapper16(
                      child: TutorialUsersFeedbackSection(
                        likes: tutorial.likes,
                        dislikes: tutorial.dislikes,
                        commentsCount: tutorial.commentsCount,
                      ),
                    ),
                    AppPadding.verticalPadding20,
                    AppPadding.horizontalWrapper16(
                      child: TutorialContentSection(
                        content: tutorial.content,
                      ),
                    ),
                    AppPadding.verticalPadding20,
                    SizedBox(
                      height: context.padding.bottom + (16 + 44).toHeight,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: context.padding.bottom + 16.toHeight,
                right: 32.toWidth,
                left: 32.toWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppContainer.fromStyle(
                      style: ContainerUIStyle(
                        padding: EdgeInsetsUIStyle(
                          left: 16.toWidth,
                          right: 16.toWidth,
                          top: 8.toHeight,
                          bottom: 8.toHeight,
                        ),
                        decoration: style.actionButtonsStyle,
                      ),
                      child: Column(
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.toHeight),
                                child: AppText(
                                  'Tak a test: ',
                                  uiStyle: semiBoldFont.description.copyWith(
                                    colorHex: style.neutralColorHex,
                                  ),
                                ),
                              ),
                              AppText(
                                'X * 11',
                                uiStyle: semiBoldFont.simple,
                              ),
                            ],
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.toHeight),
                                child: AppText(
                                  'Limited by ',
                                  uiStyle: regularFont.description.copyWith(
                                    colorHex: style.neutralColorHex,
                                  ),
                                ),
                              ),
                              AppText(
                                '30 seconds',
                                uiStyle: semiBoldFont.subtitle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
