import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart' as faker;
import 'package:pythagoras_match/pythagoras_match.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class PlayersProgressGuideScreen extends StatefulWidget {
  static const route = '/players_result_guide';

  const PlayersProgressGuideScreen({super.key});

  @override
  State<PlayersProgressGuideScreen> createState() =>
      _PlayersProgressGuideScreenState();

  static PageRoute<PlayersProgressGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const PlayersProgressGuideScreen(),
      settings: settings,
    );
  }
}

class _PlayersProgressGuideScreenState extends State<PlayersProgressGuideScreen>
    with SingleTickerProviderStateMixin {
  final results = <PlayerResult>[];
  final f = faker.Faker();
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    // controller = AnimationController(
    //   vsync: this,
    // );
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   await controller.forward(from: 0.0);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return AppSheetScaffold(
      topChildren: [
        AppPadding.horizontalWrapper8(
          child: PlayersProgress(
            results: results.map((e) {
              final cv = e.correctValue;
              final tv = e.totalValue;
              if (cv == null || cv == 0 || tv == null || tv == 0) {
                return e;
              }
              return e.copyWith(
                progress: cv / tv,
              );
            }).toList(),
          ),
        ),
        AppPadding.verticalPadding16,
      ],
      bodyChildren: [
        AppPadding.verticalPadding16,
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...results.mapIndexed(
                  (index, value) => Padding(
                    padding: EdgeInsets.only(bottom: 16.toHeight),
                    child: PlayerResultValueWidget(
                      result: value,
                      onChanged: (result) => setState(() {
                        results[index] = result;
                      }),
                    ),
                  ),
                ),
                AppPadding.verticalPadding16,
                AppPadding.horizontalWrapper8(
                  child: ElevatedButton(
                    onPressed: () => setState(() {
                      results.add(
                        PlayerResult(
                          user: AnonymousUser(
                            localId: f.internet.ipv6Address(),
                            nickname: f.person.name(),
                            email: f.internet.email(),
                          ),
                          progress: 0,
                          correctValue: 0,
                          totalValue: 0,
                        ),
                      );
                    }),
                    child: AppText('+'),
                  ),
                ),
                AppPadding.verticalPadding16,
                AppPadding.horizontalWrapper8(
                  child: ElevatedButton(
                    onPressed: () {
                      if (controller.value == 0) {
                        controller.forward(from: 0.0);
                      } else {
                        controller.reverse(from: 1.0);
                      }
                    },
                    child: AppText('Change Results Position'),
                  ),
                ),
                AppPadding.verticalPadding16,
                AppPadding.horizontalWrapper8(
                  child: ElevatedButton(
                    onPressed: Navigator.of(context).pop,
                    child: AppText('Back'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PlayerResultValueWidget extends StatelessWidget {
  final PlayerResult result;
  final ValueChanged<PlayerResult> onChanged;

  const PlayerResultValueWidget({
    super.key,
    required this.result,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AppPadding.horizontalWrapper16(
      child: Row(
        children: [
          Expanded(
            child: AppText(
              result.user.nickname,
            ),
          ),
          AppPadding.horizontalPadding8,
          ValueWidget(
            value: result.correctValue ?? 0,
            onChanged: (value) => onChanged(
              result.copyWith(
                correctValue: value,
              ),
            ),
          ),
          AppPadding.horizontalPadding8,
          ValueWidget(
            value: result.totalValue ?? 0,
            onChanged: (value) => onChanged(
              result.copyWith(
                totalValue: value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ValueWidget extends StatelessWidget {
  final int value;
  final ValueChanged<int> onChanged;

  const ValueWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => onChanged(value - 1),
          child: SizedBox(
            width: 32.toWidth,
            child: AppText('-'),
          ),
        ),
        AppText(value.toString()),
        InkWell(
          onTap: () => onChanged(value + 1),
          child: SizedBox(
            width: 32.toWidth,
            child: AppText('+'),
          ),
        ),
      ],
    );
  }
}
