import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class PaceBotWidget extends StatefulWidget {
  static const route = '/pace_bot';

  final BotUser? botUser;
  final ValueChanged<BotUser> onApplyBot;

  const PaceBotWidget({
    super.key,
    this.botUser,
    required this.onApplyBot,
  });

  @override
  State<PaceBotWidget> createState() => _PaceBotWidgetState();

  static Future<void> showModalScreen(
    BuildContext context, {
    required ValueChanged<BotUser> onApplyBot,
    BotUser? botUser,
  }) async {
    final style = AppGlobalStyle.of(context).style;
    final border = style.appSheetStyle.border?.border;
    final radius = style.appSheetStyle.borderRadius?.borderRadius;
    if (kIsWeb) {
      showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext context, _, __) => Dialog(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: border?.bottom.width ?? 0,
              color: Colors.white,
            ),
            borderRadius: radius ?? BorderRadius.zero,
          ),
          child: Container(
            constraints: const BoxConstraints(
              maxHeight: 540,
              maxWidth: 600,
            ),
            child: PaceBotWidget(
              onApplyBot: onApplyBot,
              botUser: botUser,
            ),
          ),
        ),
      );
    } else {
      showModalBottomSheet(
        context: context,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: border?.bottom.width ?? 0,
            color: Colors.white,
          ),
          borderRadius: radius ?? BorderRadius.zero,
        ),
        builder: (context) => PaceBotWidget(
          onApplyBot: onApplyBot,
          botUser: botUser,
        ),
      );
    }
  }

  static PageRoute<PaceBotWidget> getRoute({
    required VoidCallback onCancel,
    required ValueChanged<BotUser> onApplyBot,
    BotUser? botUser,
  }) {
    return MaterialPageRoute(
      builder: (_) => PaceBotWidget(
        onApplyBot: onApplyBot,
        botUser: botUser,
      ),
      settings: const RouteSettings(name: route),
    );
  }
}

class _PaceBotWidgetState extends State<PaceBotWidget> {
  late int pace;

  @override
  void initState() {
    pace = widget.botUser?.pace ?? 25;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final textStyle = style.textStyle;
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppSheetBar(
            title: AppText(
              widget.botUser != null ? 'Edit Bot' : 'Add Bot',
              uiStyle: style.textStyle.regularFont.tileTitle,
            ),
          ),
          AppPadding.verticalPadding16,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppPadding.horizontalPadding16,
              SizedBox(
                width: min(64.toWidth, 68),
                height: min(64.toWidth, 68),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                      EdgeInsets.zero,
                    ),
                  ),
                  child: BotIcon(
                    pace: pace,
                  ),
                ),
              ),
              AppPadding.horizontalPadding16,
              AppText(
                'Pace Bot: ',
                uiStyle: textStyle.semiBoldFont.tileTitle.copyWith(
                  colorHex: style.neutralColorHex,
                ),
              ),
              SizedBox(
                width: 40.toWidth,
                child: AppText(
                  pace.toString(),
                  uiStyle: textStyle.semiBoldFont.tileTitle,
                  textAlign: TextAlign.end,
                ),
              ),
              AppText(
                ' expr/min',
                uiStyle: textStyle.regularFont.tileTitle.copyWith(
                  colorHex: style.neutralColorHex,
                ),
              ),
              AppPadding.horizontalPadding16,
            ],
          ),
          SpeedValueWidget(
            initValue: pace,
            confirmTitle: widget.botUser == null ? 'Add' : 'Apply',
            onChanged: (value) => setState(
              () => pace = value,
            ),
            onConfirm: () {
              widget.onApplyBot(
                (widget.botUser ?? generateBotFromPace(pace)).copyWith(
                  pace: pace,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SpeedValueWidget extends StatefulWidget {
  final int initValue;
  final ValueChanged<int> onChanged;
  final VoidCallback onConfirm;
  final String confirmTitle;
  final String? cancelTitle;

  SpeedValueWidget({
    super.key,
    required this.onChanged,
    required this.onConfirm,
    required this.confirmTitle,
    required int initValue,
    this.cancelTitle,
  }) : initValue = max(minSpeed, min(maxSpeed, initValue));

  @override
  State<SpeedValueWidget> createState() => _SpeedValueWidgetState();
}

class _SpeedValueWidgetState extends State<SpeedValueWidget> {
  late int speed;
  late int prevOffset;
  static const wheelKoef = 100;

  @override
  void initState() {
    super.initState();
    speed = widget.initValue;
    prevOffset = maxSpeed * wheelKoef ~/ 2;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final style = AppGlobalStyle.of(context);
        return AppPadding.horizontalWrapper16(
          child: Column(
            children: [
              AppPadding.horizontalWrapper16(
                child: SizedBox(
                  height: min(200.toHeight, 260),
                  child: AnimatedRadialGauge(
                    initialValue: speed.toDouble(),
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.elasticOut,
                    value: speed.toDouble(),
                    axis: GaugeAxis(
                      min: minSpeed.toDouble(),
                      max: maxSpeed.toDouble(),
                      degrees: 180,
                      style: const GaugeAxisStyle(
                        thickness: 20,
                      ),
                      pointer: GaugePointer.needle(
                        borderRadius: 16,
                        color: style.style.neutralColorHex.color,
                        width: 16.toWidth,
                        height: 100.toHeight,
                      ),
                      progressBar: GaugeProgressBar.basic(
                        color: style.style.positiveColorHex.color,
                      ),
                      segments: [
                        GaugeSegment(
                          from: 0,
                          to: 100,
                          gradient: GaugeAxisGradient(
                            colors: style.sectionColors,
                            colorStops: sectionsStops,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Slider(
                activeColor: style.style.actionColorHex.color,
                value: speed.toDouble(),
                max: maxSpeed.toDouble(),
                divisions: maxSpeed - minSpeed,
                onChanged: (double value) {
                  speed = max(minSpeed, min(maxSpeed, value.toInt()));
                  widget.onChanged(speed);
                },
              ),
              AppPadding.verticalPadding8,
              AppPadding.horizontalWrapper8(
                child: SizedBox(
                  height: min(48.toHeight, 50),
                  child: AppActionButton(
                    text: 'Apply Speed',
                    onTap: widget.onConfirm,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

BotUser generateBotFromPace(int pace) {
  return BotUser(
    localId: faker.internet.ipv6Address(),
    nickname: 'Pace Bot',
    pace: pace,
  );
}
